## Some examples:
```
FTP URL: ftp://ftp.ebi.ac.uk/pub/databases/interpro/Current/

http://mistdb.com/search?f=uni&q=A0A001_9ACTO&c=10
http://mistdb.com/proteins/view/7684552
db.genes.find({geneID: 7684552}).limit(1)
```

## Example (match_complete.xml):

```xml
<protein id="A0A001" name="A0A001_9ACTO" length="591" crc64="4F6121D422B63694">
    <match id="G3DSA:1.20.1560.10" name="G3DSA:1.20.1560.10" dbname="GENE3D" status="T" evd="HMMPfam">
        <lcn start="3" end="299" score="6.899999999408093E-23" />
    </match>
    <match id="G3DSA:3.40.50.300" name="G3DSA:3.40.50.300" dbname="GENE3D" status="T" evd="HMMPfam">
        <ipr id="IPR027417" name="P-loop containing nucleoside triphosphate hydrolase" type="Domain" />
        <lcn start="346" end="566" score="2.299999999906829E-59" />
    </match>
    <match id="PF00005" name="ABC_tran" dbname="PFAM" status="T" evd="HMMPfam">
        <ipr id="IPR003439" name="ABC transporter-like" type="Domain" />
        <lcn start="361" end="504" score="1.6999999999999924E-22" />
    </match>
    <match id="PF00664" name="ABC_membrane" dbname="PFAM" status="T" evd="HMMPfam">
        <ipr id="IPR001140" name="ABC transporter, transmembrane domain" type="Domain" parent_id="IPR011527" />
        <lcn start="24" end="276" score="7.5E-5" />
    </match>
    <match id="PS00211" name="ABC_TRANSPORTER_1" dbname="PROSITE" status="T" evd="AddProsite">
        <ipr id="IPR017871" name="ABC transporter, conserved site" type="Conserved_site" />
        <lcn start="478" end="492" score="0.0" />
    </match>
    <match id="PS50893" name="ABC_TRANSPORTER_2" dbname="PROFILE" status="T" evd="PrfScan">
        <ipr id="IPR003439" name="ABC transporter-like" type="Domain" />
        <lcn start="344" end="573" score="0.0" />
    </match>
    <match id="PS50929" name="ABC_TM1F" dbname="PROFILE" status="T" evd="PrfScan">
        <ipr id="IPR011527" name="ABC transporter type 1, transmembrane domain" type="Domain" />
        <lcn start="17" end="289" score="0.0" />
    </match>
    <match id="PTHR24221" name="PTHR24221" dbname="PANTHER" status="T" evd="HMMPfam">
        <lcn start="1" end="564" score="3.30001976117415E-69" />
    </match>
    <match id="PTHR24221:SF161" name="PTHR24221:SF161" dbname="PANTHER" status="T" evd="HMMPfam">
        <lcn start="1" end="564" score="3.30001976117415E-69" />
    </match>
    <match id="SM00382" name="AAA" dbname="SMART" status="T" evd="Smart scan">
        <ipr id="IPR003593" name="AAA+ ATPase domain" type="Domain" parent_id="IPR027417" />
        <lcn start="369" end="550" score="3.000000679928713E-16" />
    </match>
    <match id="SSF52540" name="SSF52540" dbname="SSF" status="T" evd="HMMPfam">
        <ipr id="IPR027417" name="P-loop containing nucleoside triphosphate hydrolase" type="Domain" />
        <lcn start="342" end="565" score="1.179999999983357E-53" />
    </match>
    <match id="SSF90123" name="SSF90123" dbname="SSF" status="T" evd="HMMPfam">
        <ipr id="IPR011527" name="ABC transporter type 1, transmembrane domain" type="Domain" />
        <lcn start="3" end="300" score="3.91999999981535E-28" />
    </match>
</protein>
```

## Example (protein2ipr.dat):

```
A0A000  IPR004839   Aminotransferase, class I/classII   PF00155 41  381
A0A000  IPR010961   Tetrapyrrole biosynthesis, 5-aminolevulinic acid synthase   TIGR01821   12  391
A0A000  IPR015421   Pyridoxal phosphate-dependent transferase, major region, subdomain 1    G3DSA:3.40.640.10   52  272
A0A000  IPR015422   Pyridoxal phosphate-dependent transferase, major region, subdomain 2    G3DSA:3.90.1150.10  273 387
A0A000  IPR015424   Pyridoxal phosphate-dependent transferase   SSF53383    9   389
A0A001  IPR003439   ABC transporter-like    PF00005 361 504
A0A001  IPR003439   ABC transporter-like    PS50893 344 573
A0A001  IPR003593   AAA+ ATPase domain  SM00382 369 550
A0A001  IPR011527   ABC transporter type 1, transmembrane domain    PF00664 20  276
A0A001  IPR011527   ABC transporter type 1, transmembrane domain    PS50929 17  289
A0A001  IPR011527   ABC transporter type 1, transmembrane domain    SSF90123    3   300
A0A001  IPR017871   ABC transporter, conserved site PS00211 478 492
A0A001  IPR027417   P-loop containing nucleoside triphosphate hydrolase G3DSA:3.40.50.300   346 566
A0A001  IPR027417   P-loop containing nucleoside triphosphate hydrolase SSF52540    342 565
A0A002  IPR003439   ABC transporter-like    PF00005 340 489
A0A002  IPR003439   ABC transporter-like    PS50893 324 558
A0A002  IPR003593   AAA+ ATPase domain  SM00382 349 535
A0A002  IPR011527   ABC transporter type 1, transmembrane domain    PF00664 19  279
A0A002  IPR011527   ABC transporter type 1, transmembrane domain    PS50929 17  291
A0A002  IPR011527   ABC transporter type 1, transmembrane domain    SSF90123    2   303
A0A002  IPR027417   P-loop containing nucleoside triphosphate hydrolase G3DSA:3.40.50.300   325 559
A0A002  IPR027417   P-loop containing nucleoside triphosphate hydrolase SSF52540    322 550
A0A003  IPR001509   NAD-dependent epimerase/dehydratase, N-terminal domain  PF01370 15  249
A0A003  IPR008089   Nucleotide sugar epimerase  PR01713 220 235
A0A003  IPR008089   Nucleotide sugar epimerase  PR01713 243 258

```
