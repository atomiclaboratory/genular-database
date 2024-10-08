## Info

ClinVar aggregates information about sequence variation and its relationship to human health.

## Download

URL: http://www.ncbi.nlm.nih.gov/clinvar/

FTP: ftp://ftp.ncbi.nlm.nih.gov/pub/clinvar/

## Example of XML

```xml
<ClinVarSet ID="3115644">
  <RecordStatus>current</RecordStatus>
  <Title>BRCA1:c.4357+2T&gt;G AND Breast-ovarian cancer, familial 1</Title>
  <ReferenceClinVarAssertion DateCreated="2013-12-23" DateLastUpdated="2014-07-22" ID="190195">
    <ClinVarAccession Acc="RCV000077146" Version="2" Type="RCV" DateUpdated="2014-07-23" />
    <RecordStatus>current</RecordStatus>
    <ClinicalSignificance DateLastEvaluated="2012-09-24">
      <ReviewStatus>classified by multiple submitters</ReviewStatus>
      <Description>Pathogenic</Description>
    </ClinicalSignificance>
    <Assertion Type="variation to disease" />
    <ObservedIn>
      <Sample>
        <Origin>germline</Origin>
        <Species TaxonomyId="9606">human</Species>
        <AffectedStatus>not provided</AffectedStatus>
        <NumberTested>1</NumberTested>
      </Sample>
      <Method>
        <MethodType>clinical testing</MethodType>
      </Method>
      <ObservedData ID="2681310">
        <Attribute integerValue="1" Type="VariantAlleles" />
      </ObservedData>
    </ObservedIn>
    <ObservedIn>
      <Sample>
        <Origin>germline</Origin>
        <Species TaxonomyId="9606">human</Species>
        <AffectedStatus>yes</AffectedStatus>
      </Sample>
      <Method>
        <MethodType>clinical testing</MethodType>
      </Method>
      <ObservedData ID="2688253">
        <Attribute integerValue="1" Type="VariantAlleles" />
      </ObservedData>
    </ObservedIn>
    <MeasureSet Type="Variant" ID="91629">
      <Measure Type="single nucleotide variant" ID="97106">
        <Name>
          <ElementValue Type="Preferred">BRCA1:c.4357+2T&gt;G</ElementValue>
        </Name>
        <AttributeSet>
          <Attribute Type="HGVS, coding, LRG" Change="c.4357+2T&gt;G">LRG_292t1:c.4357+2T&gt;G</Attribute>
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="HGVS, coding, RefSeq" Change="c.4357+2T&gt;G">NM_007294.3:c.4357+2T&gt;G</Attribute>
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="HGVS, genomic, LRG" Change="g.135582T&gt;G">LRG_292:g.135582T&gt;G</Attribute>
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="HGVS, genomic, RefSeqGene" Change="g.135582T&gt;G">NG_005905.2:g.135582T&gt;G</Attribute>
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="HGVS, genomic, top level" Change="g.43082402A&gt;C">NC_000017.11:g.43082402A&gt;C</Attribute>
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="HGVS, genomic, top level, previous" Change="g.41234419A&gt;C">NC_000017.10:g.41234419A&gt;C</Attribute>
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="HGVS, non-coding" Change="n.4476+2T&gt;G">U14680.1:n.4476+2T&gt;G</Attribute>
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="Location">U14680.1:intron 13</Attribute>
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="MolecularConsequence">splice donor variant</Attribute>
          <XRef ID="SO:0001575" DB="Sequence Ontology" />
          <XRef ID="NM_007294.3:c.4357+2T&gt;G" DB="RefSeq" />
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="nucleotide change">IVS13+2T&gt;G</Attribute>
        </AttributeSet>
        <CytogeneticLocation>17q21.31</CytogeneticLocation>
        <SequenceLocation Assembly="GRCh38" Chr="17" Accession="NC_000017.11" start="43082402" stop="43082402" variantLength="1" referenceAllele="A" alternateAllele="C" />
        <SequenceLocation Assembly="GRCh37" Chr="17" Accession="NC_000017.10" start="41234419" stop="41234419" variantLength="1" referenceAllele="A" alternateAllele="C" />
        <MeasureRelationship Type="variant in gene">
          <Name>
            <ElementValue Type="Preferred">breast cancer 1, early onset</ElementValue>
          </Name>
          <Symbol>
            <ElementValue Type="Preferred">BRCA1</ElementValue>
          </Symbol>
          <SequenceLocation Assembly="GRCh37" Chr="17" Accession="NC_000017.10" start="41196311" stop="41277499" Strand="-" />
          <SequenceLocation Assembly="GRCh38" Chr="17" Accession="NC_000017.11" start="43044294" stop="43125482" Strand="-" />
          <XRef ID="672" DB="Gene" />
          <XRef Type="MIM" ID="113705" DB="OMIM" />
          <Comment DataSource="NCBI curation">This gene is cited in the ACMG recommendations of 2013 (PubMed 23788249) for reporting incidental findings in exons.</Comment>
        </MeasureRelationship>
        <XRef ID="4476+2&amp;base_change=T to G" DB="Breast Cancer Information Core (BIC) (BRCA1)" />
        <XRef Type="rs" ID="80358152" DB="dbSNP" />
        <Comment DataSource="Sharing Clinical Reports Project (SCRP)">Single site analysis</Comment>
      </Measure>
      <Name>
        <ElementValue Type="preferred name">BRCA1:c.4357+2T&gt;G</ElementValue>
      </Name>
    </MeasureSet>
    <TraitSet Type="Disease" ID="1917">
      <Trait ID="4711" Type="Disease">
        <Name>
          <ElementValue Type="Preferred">Breast-ovarian cancer, familial 1</ElementValue>
          <XRef ID="Breast-ovarian+cancer%2C+familial+1/7865" DB="Genetic Alliance" />
        </Name>
        <Name>
          <ElementValue Type="Alternate">BREAST-OVARIAN CANCER, FAMILIAL, SUSCEPTIBILITY TO, 1</ElementValue>
          <XRef Type="MIM" ID="604370" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0001" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0002" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0003" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0004" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0005" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0006" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0007" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0008" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0009" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0010" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0011" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0012" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0013" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0014" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0015" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0016" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0017" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0018" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0019" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0020" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0021" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0022" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0023" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0024" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0025" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0026" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0027" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0028" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0029" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0030" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0031" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0032" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0033" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0034" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0035" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0036" DB="OMIM" />
          <XRef Type="Allelic variant" ID="113705.0037" DB="OMIM" />
        </Name>
        <Name>
          <ElementValue Type="Alternate">OVARIAN CANCER, SUSCEPTIBILITY TO</ElementValue>
          <XRef Type="Allelic variant" ID="602667.0001" DB="OMIM" />
        </Name>
        <Name>
          <ElementValue Type="Alternate">BREAST CANCER, FAMILIAL, SUSCEPTIBILITY TO, 1</ElementValue>
          <XRef ID="604370" DB="OMIM" />
        </Name>
        <Name>
          <ElementValue Type="Alternate">Breast cancer, familial 1</ElementValue>
        </Name>
        <Name>
          <ElementValue Type="Alternate">Breast-ovarian cancer, familial 1 and 2</ElementValue>
          <XRef ID="GTR000310494" DB="Laboratory of Genetics,HUSLAB" />
        </Name>
        <Name>
          <ElementValue Type="Alternate">BRCA1 Gene Mutation</ElementValue>
          <XRef ID="GTR000501743" DB="Myriad Genetic Laboratories,Myriad Genetic Laboratories, Inc." />
        </Name>
        <Symbol>
          <ElementValue Type="Preferred">BROVCA1</ElementValue>
          <XRef Type="MIM" ID="604370" DB="OMIM" />
        </Symbol>
        <Symbol>
          <ElementValue Type="Alternate">BRCA1</ElementValue>
          <XRef ID="GTR000501196" DB="Department of Clinical Genetics,St. Elisabeth Cancer Institute" />
        </Symbol>
        <Symbol>
          <ElementValue Type="Alternate">HBOC</ElementValue>
          <XRef ID="GTR000501743" DB="Myriad Genetic Laboratories,Myriad Genetic Laboratories, Inc." />
        </Symbol>
        <AttributeSet>
          <Attribute Type="public definition">Hereditary breast and ovarian cancer syndrome (HBOC), caused by a germline mutation in BRCA1 or BRCA2, is characterized by an increased risk for breast cancer, ovarian cancer, prostate cancer, and pancreatic cancer. The lifetime risk for these cancers in individuals with a mutation in BRCA1 or BRCA2: 40%-80% for breast cancer. 11%-40% for ovarian cancer. 1%-10% for male breast cancer. Up to 39% for prostate cancer. 1%-7% for pancreatic cancer. Individuals with BRCA2 mutations may also be at an increased risk for melanoma. Prognosis for BRCA1/2-related cancer depends on the stage at which the cancer is diagnosed; however, studies on survival have revealed conflicting results for individuals with germline BRCA1 or BRCA2 mutations when compared to controls.</Attribute>
          <XRef ID="NBK1247" DB="GeneReviews" />
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="ModeOfInheritance" integerValue="262">Autosomal dominant inheritance</Attribute>
          <XRef ID="GTR000507913" DB="Invitae " />
          <XRef ID="GTR000507930" DB="Invitae " />
          <XRef ID="GTR000509348" DB="Invitae " />
          <XRef ID="GTR000509349" DB="Invitae " />
          <XRef ID="GTR000017876" DB="Molecular Genetics Laboratory - Diagnostics Genetics,LabPLUS - Auckland City Hospital" />
          <XRef ID="GTR000512816" DB="Molecular Genetics Laboratory - Diagnostics Genetics,LabPLUS - Auckland City Hospital" />
          <XRef ID="GTR000501196" DB="Department of Clinical Genetics,St. Elisabeth Cancer Institute" />
          <XRef ID="GTR000509980" DB="Michigan Medical Genetics Laboratories,University of Michigan" />
          <XRef ID="GTR000509982" DB="Michigan Medical Genetics Laboratories,University of Michigan" />
          <XRef ID="GTR000509983" DB="Michigan Medical Genetics Laboratories,University of Michigan" />
          <XRef ID="GTR000509001" DB="GENETIX Centro de Investigación en Genética Humana y Reproductiva" />
          <XRef ID="GTR000509002" DB="GENETIX Centro de Investigación en Genética Humana y Reproductiva" />
          <XRef ID="GTR000320777" DB="Unidad de Diagnostico Molecular,Instituto de Referencia Andino" />
          <XRef ID="GTR000330054" DB="Institute of Human Genetics,Universitätsmedizin Greifswald" />
          <XRef ID="GTR000021517" DB="Molecular Diagnostic Laboratory,London Health Sciences Centre" />
          <XRef ID="GTR000505644" DB="Centogene AG  - the Rare Disease Company,Centogene AG" />
          <XRef ID="GTR000512320" DB="Centogene AG  - the Rare Disease Company,Centogene AG" />
          <XRef ID="GTR000501743" DB="Myriad Genetic Laboratories,Myriad Genetic Laboratories, Inc." />
          <XRef ID="GTR000501746" DB="Myriad Genetic Laboratories,Myriad Genetic Laboratories, Inc." />
          <XRef ID="GTR000512644" DB="CGC Genetics" />
          <XRef ID="GTR000512645" DB="CGC Genetics" />
          <XRef ID="GTR000501817" DB="Molecular Genetics,Rabin Medical Center" />
          <XRef ID="GTR000325409" DB="Laboratory of Human Genetics,Health Care Center GENOMED" />
          <XRef ID="GTR000509450" DB="Fulgent Clinical Diagnostics Lab,Fulgent Diagnostics " />
          <XRef ID="GTR000509451" DB="Fulgent Clinical Diagnostics Lab,Fulgent Diagnostics " />
          <XRef ID="GTR000509363" DB="Vanak Pathobiology Laboratory,Vanak Pathobiology Laboratory" />
          <XRef ID="GTR000507653" DB="PentaCoreLab" />
          <XRef ID="GTR000507764" DB="PentaCoreLab" />
          <XRef ID="GTR000514601" DB="Genomic Research Center,Shahid Beheshti University of Medical Sciences" />
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="age of onset">Variable</Attribute>
          <XRef ID="145" DB="Orphanet" />
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="disease mechanism" integerValue="273">loss of function</Attribute>
          <XRef ID="GTR000507913" DB="Invitae " />
          <XRef ID="GTR000507930" DB="Invitae " />
          <XRef ID="GTR000509348" DB="Invitae " />
          <XRef ID="GTR000509349" DB="Invitae " />
          <XRef ID="GTR000017876" DB="Molecular Genetics Laboratory - Diagnostics Genetics,LabPLUS - Auckland City Hospital" />
          <XRef ID="GTR000512816" DB="Molecular Genetics Laboratory - Diagnostics Genetics,LabPLUS - Auckland City Hospital" />
          <XRef ID="GTR000509980" DB="Michigan Medical Genetics Laboratories,University of Michigan" />
          <XRef ID="GTR000509982" DB="Michigan Medical Genetics Laboratories,University of Michigan" />
          <XRef ID="GTR000509983" DB="Michigan Medical Genetics Laboratories,University of Michigan" />
          <XRef ID="GTR000509001" DB="GENETIX Centro de Investigación en Genética Humana y Reproductiva" />
          <XRef ID="GTR000509002" DB="GENETIX Centro de Investigación en Genética Humana y Reproductiva" />
          <XRef ID="GTR000320777" DB="Unidad de Diagnostico Molecular,Instituto de Referencia Andino" />
          <XRef ID="GTR000330054" DB="Institute of Human Genetics,Universitätsmedizin Greifswald" />
          <XRef ID="GTR000021517" DB="Molecular Diagnostic Laboratory,London Health Sciences Centre" />
          <XRef ID="GTR000505644" DB="Centogene AG  - the Rare Disease Company,Centogene AG" />
          <XRef ID="GTR000512320" DB="Centogene AG  - the Rare Disease Company,Centogene AG" />
          <XRef ID="GTR000501743" DB="Myriad Genetic Laboratories,Myriad Genetic Laboratories, Inc." />
          <XRef ID="GTR000501746" DB="Myriad Genetic Laboratories,Myriad Genetic Laboratories, Inc." />
          <XRef ID="GTR000512644" DB="CGC Genetics" />
          <XRef ID="GTR000512645" DB="CGC Genetics" />
          <XRef ID="GTR000501817" DB="Molecular Genetics,Rabin Medical Center" />
          <XRef ID="GTR000325409" DB="Laboratory of Human Genetics,Health Care Center GENOMED" />
          <XRef ID="GTR000509450" DB="Fulgent Clinical Diagnostics Lab,Fulgent Diagnostics " />
          <XRef ID="GTR000509451" DB="Fulgent Clinical Diagnostics Lab,Fulgent Diagnostics " />
          <XRef ID="GTR000509363" DB="Vanak Pathobiology Laboratory,Vanak Pathobiology Laboratory" />
          <XRef ID="GTR000507653" DB="PentaCoreLab" />
          <XRef ID="GTR000507764" DB="PentaCoreLab" />
          <XRef ID="GTR000514601" DB="Genomic Research Center,Shahid Beheshti University of Medical Sciences" />
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="prevalence">1-5 / 10 000</Attribute>
          <XRef ID="145" DB="Orphanet" />
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="prevalence">Hereditary breast and ovarian cancer (HBOC) resulting from mutations in BRCA1 and BRCA2 is the most common form of both hereditary breast and ovarian cancers and occurs in all ethnic and racial populations. The overall prevalence of BRCA1/2 mutations is estimated to be from 1:400 to 1:800 [Ford et al 1994, Claus et al 1996, Whittemore et al 1997], but varies depending on ethnicity.</Attribute>
          <Citation Type="general">
            <URL>http://www.ncbi.nlm.nih.gov/books/NBK1247/</URL>
          </Citation>
          <Citation Type="general">
            <CitationText>Ford et al 1994, Claus et al 1996, Whittemore et al 1997</CitationText>
          </Citation>
          <XRef ID="GTR000021517" DB="Molecular Diagnostic Laboratory,London Health Sciences Centre" />
        </AttributeSet>
        <Citation Type="review" Abbrev="GeneReviews">
          <ID Source="PubMed">20301425</ID>
        </Citation>
        <Citation Type="practice guideline" Abbrev="ACOG, 2009">
          <ID Source="PubMed">19305347</ID>
        </Citation>
        <Citation Type="practice guideline" Abbrev="ACS, 2007">
          <ID Source="PubMed">17392385</ID>
        </Citation>
        <Citation Type="practice guideline" Abbrev="NSGC, 2004">
          <ID Source="PubMed">15604628</ID>
        </Citation>
        <Citation Type="practice guideline" Abbrev="NSGC, 2007">
          <ID Source="PubMed">17508274</ID>
        </Citation>
        <Citation Type="Recommendation" Abbrev="ACMG, 2013">
          <ID Source="PubMed">23788249</ID>
        </Citation>
        <Citation Type="practice guideline" Abbrev="NCCN, 2013">
          <URL>http://www.nccn.org/professionals/physician_gls/pdf/genetics_screening.pdf</URL>
        </Citation>
        <Citation Type="Position Statement" Abbrev="ASCO, 2010">
          <ID Source="PubMed">20065170</ID>
        </Citation>
        <Citation Type="Suggested Reading" Abbrev="Phillips et al., 2013">
          <ID Source="PubMed">23918944</ID>
        </Citation>
        <Citation Type="Suggested Reading" Abbrev="Domchek et al., 2010">
          <ID Source="pmc">2948529</ID>
        </Citation>
        <XRef ID="C2676676" DB="MedGen" />
        <XRef ID="145" DB="Orphanet" />
        <XRef Type="MIM" ID="604370" DB="OMIM" />
      </Trait>
    </TraitSet>
  </ReferenceClinVarAssertion>
  <ClinVarAssertion ID="189345">
    <ClinVarSubmissionID localKey="SCRP_var_1220" title="NM_007294.3:c.4357+2T&gt;G AND Breast-ovarian cancer, familial 1" submitterDate="2013-08-08" submitter="Sharing Clinical Reports Project (SCRP)" />
    <ClinVarAccession Acc="SCV000108943" Version="1" Type="SCV" OrgID="500037" DateUpdated="2014-06-23" />
    <RecordStatus>current</RecordStatus>
    <ClinicalSignificance DateLastEvaluated="2012-09-24">
      <ReviewStatus>classified by single submitter</ReviewStatus>
      <Description>Pathogenic</Description>
    </ClinicalSignificance>
    <Assertion Type="variation to disease" />
    <ObservedIn>
      <Sample>
        <Origin>germline</Origin>
        <Species>human</Species>
        <AffectedStatus>not provided</AffectedStatus>
        <NumberTested>1</NumberTested>
      </Sample>
      <Method>
        <MethodType>clinical testing</MethodType>
      </Method>
      <ObservedData>
        <Attribute Type="VariantAlleles">1</Attribute>
      </ObservedData>
    </ObservedIn>
    <MeasureSet Type="Variant">
      <Measure Type="Variation">
        <AttributeSet>
          <Attribute Type="nucleotide change">IVS13+2T&gt;G</Attribute>
        </AttributeSet>
        <MeasureRelationship Type="variant in gene">
          <Symbol>
            <ElementValue Type="Preferred">BRCA1</ElementValue>
          </Symbol>
        </MeasureRelationship>
      </Measure>
    </MeasureSet>
    <TraitSet Type="Disease">
      <Trait Type="Disease">
        <Name>
          <ElementValue Type="Preferred">Breast-ovarian cancer, familial 1</ElementValue>
        </Name>
      </Trait>
    </TraitSet>
  </ClinVarAssertion>
  <ClinVarAssertion ID="261969">
    <ClinVarSubmissionID localKey="U14680.1:n.4476+2T&gt;G|MedGen:C2676676" submitter="Breast Cancer Information Core (BIC) (BRCA1)" submitterDate="2014-03-28" />
    <ClinVarAccession Acc="SCV000145071" Version="1" Type="SCV" OrgID="504196" DateUpdated="2014-06-23" />
    <RecordStatus>current</RecordStatus>
    <ClinicalSignificance DateLastEvaluated="1999-06-22">
      <ReviewStatus>classified by single submitter</ReviewStatus>
      <Description>Pathogenic</Description>
    </ClinicalSignificance>
    <Assertion Type="variation to disease" />
    <ObservedIn>
      <Sample>
        <Origin>germline</Origin>
        <Species TaxonomyId="9606">human</Species>
        <AffectedStatus>yes</AffectedStatus>
      </Sample>
      <Method>
        <MethodType>clinical testing</MethodType>
      </Method>
      <ObservedData>
        <Attribute Type="VariantAlleles" integerValue="1" />
      </ObservedData>
    </ObservedIn>
    <MeasureSet Type="Variant">
      <Measure Type="Variation">
        <Name>
          <ElementValue Type="Alternate">IVS13+2T&gt;G</ElementValue>
        </Name>
        <AttributeSet>
          <Attribute Type="Location">U14680.1:intron 13</Attribute>
        </AttributeSet>
        <AttributeSet>
          <Attribute Type="HGVS">U14680.1:n.4476+2T&gt;G</Attribute>
        </AttributeSet>
        <XRef DB="dbSNP" ID="80358152" Type="rsNumber" />
      </Measure>
    </MeasureSet>
    <TraitSet Type="Disease">
      <Trait Type="Disease">
        <Name>
          <ElementValue Type="Preferred">Breast-ovarian cancer, familial 1</ElementValue>
        </Name>
        <XRef DB="MedGen" ID="C2676676" Type="CUI" />
      </Trait>
    </TraitSet>
  </ClinVarAssertion>
</ClinVarSet>
```