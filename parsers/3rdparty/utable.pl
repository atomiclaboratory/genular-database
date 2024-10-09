#!/usr/bin/perl -w --				-*- perl -*-
#
use strict;
use sigtrap;
use Carp;
use POSIX qw(floor);
use IO::File;
use Getopt::Std;
use vars qw(%opts $maxn $minn @Ps $utest $maxpicks $lmaxpicks $lastn1
	    $lastn2 $lastlp @PUs @PUSEs $infinity $minconf $logfile
	    $logfh $probepicks $lnoprobe);

&initialize();
&options();
&doit();

sub doit {
    if ($logfile) {
	$logfh = new IO::File("> $logfile");
	unless($logfh) {
	    die("$0: unable to open logfile $logfile\n");
	}
    }
    print "n1\tn2\t".join("\t", @Ps)."\n";
    for(my($n1) = $minn; $n1 <= $maxn; $n1++) {
	for(my($n2) = 1; $n2 <= $n1; $n2++) {
	    my($out) = "$n1\t$n2\t";
	    my($Umin) = 0;
	    my($Umax) = $n1 * $n2;
	    my($P);
	    foreach $P (@Ps) {
		my($U, $conf, $confl, $confu) =
		    &Ucrit($n1, $n2, $P, $Umin, $Umax+1);
		if ($U > $Umin) { $Umin = $U - 1; }
		if ($U > $Umax) {
		    $U = 'infinity';
		}
		if ($confl < $minconf) {
		    $U = '*' . $U;
		}
		if ($confu < $minconf) {
		    $U .= '*';
		}
		$out .= "$U\t";
	    }
	    chop($out);
	    print "$out\n";
	}
    }
    $logfh->close;
    return(1);
}

sub Ucrit {
    my($n1, $n2, $P, $Umin, $Umax) = @_;
    my($lb, $ub) = ($Umin, $Umax);
    &lpicks($n1, $n2);			# clear cache if necessary
    for(my($i) = $lb + 1; $i <= $#PUs; $i++) {
	unless(defined($PUs[$i])) { next; }
	if ($i >= $Umax) { last; }
	if ($PUs[$i] <= $P) {
	    $ub = $i;
	    last;
	}
	$lb = $i;
    }
    #
    # binary search.  At all times:
    #     P(lb) > $P
    #     P(ub) <= $P
    while($ub > $lb + 1) {
	my($U) = floor(($ub + $lb) / 2);
	if (&PUle($n1, $n2, $U, $P)) {
	    $ub = $U;
	}
	else {
	    $lb = $U;
	}
    }
    my($confl) = &conf($PUs[$lb], $P, $PUSEs[$lb]);
    my($confu) = &conf($P, $PUs[$ub], $PUSEs[$ub]);
    my($conf) = &min($confl, $confu);
    return($ub, $conf, $confl, $confu);
}

sub min {
    my($min) = shift(@_);
    local($_);
    foreach (@_) {
	if ($_ < $min) {
	    $min = $_;
	}
    }
    return($min);
}

sub conf {
    my($P1, $P2, $SE) = @_;
    if (!defined($SE) || ($SE <= 0.0)) {
	return($infinity);
    }
    return(($P1 - $P2) / $SE);
}

# PUle -- test whether U is above critical P
#
sub PUle {
    my($n1, $n2, $U, $P) = @_;
    if (($n1 == $lastn1) && ($n2 == $lastn2)) {
	if (defined($PUs[$U])) {
	    return($PUs[$U] <= $P);
	}
    }
    my($lpicks) = &lpicks($n1, $n2);
    my($mflag) = '';
    if (($lpicks < $lnoprobe) && ($lpicks > $lmaxpicks)) {
	my($p1, $p2, $pmin) = doutest("$utest -m $probepicks $n1 $n2 $U");
	if ($pmin == 0.0) { $pmin = 1.0/$probepicks; }
	$lpicks += log($pmin);
    }
    if ($lpicks > $lmaxpicks) {
	$mflag = "-m $maxpicks";
    }
    my($command) = "$utest $mflag $n1 $n2 $U";
    my($p1, $p2, $pmin, $result) = doutest("$command");
    if ($logfile) {
	$logfh->print("$command -> $result");
    }
    $PUs[$U] = $pmin;
    if ($mflag) {
	$PUSEs[$U] = sqrt($pmin * (1.0 - $pmin) / $maxpicks);
    }
    else {
	$PUSEs[$U] = 0.0;
    }
    return($pmin <= $P);
}

sub doutest {
    my($command) = @_;
    my($results) = `$command`;
    my($p1, $p2) = $results =~ /([\d\.e+-]+)%.*[^\d\.e+-]([\d\.e+-]+)%/i;
    $p1 /= 100.0; $p2 /= 100.0;
    my($pmin) = ($p1 < $p2) ? $p1 : $p2;
    return($p1, $p2, $pmin, $results);
}

sub lpicks {
    my($n1, $n2) = @_;
    if (($n1 == $lastn1) && ($n2 == $lastn2)) {
	return($lastlp);
    }
    @PUs = ();
    @PUSEs = ();
    my($lp) = 0;
    my($N) = $n1 + $n2;
    for(my($i) = 2; $i <= $n1; $i++) {
	$lp -= log($i);
    }
    for(my($i) = $n2 + 1; $i <= $N; $i++) {
	$lp += log($i);
    }
    $lastn1 = $n1;
    $lastn2 = $n2;
    $lastlp = $lp;
    return($lp);
}

sub usage {
    die("$0: usage: $0 [-m min] [-n max] [-c SEs] [-l logfile] [-t samples]\n");
}

sub options {
    getopts('hm:n:c:l:t:', \%opts) or
	&usage();
    if ($opts{'h'}) { &usage(); }
    if ($opts{'n'}) {
	$maxn = $opts{'n'};
    }
    if ($opts{'m'}) {
	$minn = $opts{'m'};
    }
    if (($maxn < $minn) && !$opts{'n'}) {
	$maxn = $minn;
    }
    if ($opts{'c'}) {
	$minconf = $opts{'c'};
    }
    if ($opts{'l'}) {
	$logfile = $opts{'l'};
    }
    if ($opts{'t'}) {
	$maxpicks = $opts{'t'};
    }
    $lmaxpicks = log(4.0 * $maxpicks); # log threshold for Monte Carlo
    $lnoprobe = $lmaxpicks + log($probepicks);
    return(1);
}

sub initialize {
    $minn = 1;
    $maxn = 15;
    @Ps = (0.1, 0.05, 0.025, 0.01, 0.005, 0.001, 0.0005);
    $infinity = 0x7fffffff;
    $minconf = 3.0;
    $logfile = '';
    $utest = 'utest';
    $probepicks = 10000;
    $maxpicks = 1000000;		# # samples in Monte Carlo mode
    ($lastn1, $lastn2, $lastlp) = (0, 0, 0);
    return(1);
}

=pod

=head1	NAME

utable - produce a table of critical values for the Mann-Whitney U
statistic

=head1	SYNOPSIS

utable [-m min] [-n max] [-c #SEs] [-l logfile]

=head1	DESCRIPTION

utable produces a table of critical values for the Mann-Whitney U
statistic.  (This statistic is also calculated by the Wilcoxon
rank-sum test.)  The table is written to stdout as lines of
tab-separated values.  The first line is a header reading n1, n2, and
then the P values.  (Currently these are 0.1, 0.05, 0.025, 0.01,
0.005, 0.001, and 0.0005 and cannot be changed.)  The remaining lines
are the table.  Each begins with an n1 and an n2, then is followed by
the critical values of U for the corresponding P.  The Ps are for a
one-tailed test -- for a two-tailed test, they should be doubled.
(I.e., a U of 24 is significant at S<P = 0.05> in a one-tailed test when
S<n1 = 7> and S<n2 = 4>.  In a two-tailed test, it would be
significant at S<P = 0.10>.  Lines are produced in the order (1, 1),
(2, 1), (2, 2), (3, 1), (3, 2), (3, 3), (4, 1) ...  By default utable
goes from S<n1 = 1> to S<n1 = 15> -- these bounds may be changed with
the B<-m> and B<-n> options.

utable uses B<utest> to do the actual calculations, and finds critical
values by binary search.  utest may either be used in exact mode or
Monte Carlo mode.  utable begins each calculation by estimating how
long an exact calculation will take.  If this is judged to be too
long, it instead does a Monte Carlo calculation based on 1,000,000
samples.  (The figure 1,000,000 can be changed with the -t option.)
Because the Monte Carlo calculation is approximate, it may give an
incorrect critical value.  To help in managing this risk, utable
estimates the standard error of P values computed by Monte Carlo
simulation.  If the P for a given U is within a 3 standard error range
of the critical P being searched for, this is flagged in the output
with an asterisk.  An asterisk before the U indicates that the correct
critical U may actually be less than reported; an asterisk after
indicates that the correct value may be greater.  The size of the
range may be changed with the B<-c> option.

=head1	OPTIONS

=over 4

=item B<-c number_SEs>

By default utable flags critical values for Ps that are within a 3
standard error range of the P calculated by the Monte Carlo method.
This option may be used to change the size of the range.

=item B<-l logfile>

This option makes utable record all utest commands issued with their
results in a logfile.  This is useful for checking the confidence
level of flagged values.

=item B<-m min>

The minimum n1 with which to start the table.  Default 1.

=item B<-n max>

The maxmimum n1 with which to end the table.  Default 15.

=item B<-t samples>

U probabilities are calculated either using an exact method, or by a
Monte Carlo method.  By default, 1,000,000 samples are used in the
Monte Carlo method.  This option changes the number of samples.  It
also affects the choice between exact and Monte Carlo methods, since
utable.pl attempts to choose the method that will be quickest.  If you
increase the number of samples, the exact method will be used more
often.

=back

=cut
