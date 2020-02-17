Alias: LOINC = http://loinc.org
Alias: HGVS = http://varnomen.hgvs.org
Alias: HPO = http://purl.obolibrary.org/obo/hp.owl
Alias: OBS_INT = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: ECO = http://purl.obolibrary.org/obo/eco.owl
Alias: DOC_TYPE = http://ga4gh.org/fhir/phenopackets/CodeSystem/DocumentType

Instance: Proband
InstanceOf: Individual
Title: "Proband"
* gender = #male
* extension[0].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/AgeOrAgeRange"
* extension[0].valueAge.system = "http://unitsofmeasure.org"
* extension[0].valueAge.code = #a
* extension[0].valueAge.value = 14

Instance: HeterozygousCOL6A1Variant
InstanceOf: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant
Title: "Heterozygous COL6A1 Variant"
* status = #final
* code = LOINC#69548-6 "Genetic variant assessment"
* valueCodeableConcept = LOINC#LA9633-4 "Present"
* component[0].code = LOINC#81290-9 "Genomic DNA change (gHGVS)"
* component[0].valueCodeableConcept = HGVS#NM_001848.2:c.877G>A "Homo sapiens collagen type VI alpha 1 chain (COL6A1), mRNA"
* component[1].code = LOINC#53034-5 "Allelic state"
* component[1].valueCodeableConcept = LOINC#LA6706-1 "Heterozygous"

Instance: DecreasedFetalMovement
InstanceOf: PhenotypicFeature
Title: "Decreased Fetal Movement"
* status = #final
* code = HPO#HP:0001558 "Decreased fetal movement"
* interpretation = OBS_INT#POS "Positive"
* subject = Reference(Proband)
* extension[0].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/Onset"
* extension[0].valueCodeableConcept = HPO#HP:0011461 "Fetal onset"
* extension[1].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/Evidence"
* extension[1].extension[0].url = "evidenceCode"
* extension[1].extension[0].valueCodeableConcept = ECO#ECO:0000033 "author statement supported by traceable reference"
* extension[1].extension[1].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/ExternalReference"
* extension[1].extension[1].extension[0].url = "_id"
* extension[1].extension[1].extension[0].valueUrl = "http://www.ncbi.nlm.nih.gov/pubmed/30808312"
* extension[1].extension[1].extension[1].url = "description"
* extension[1].extension[1].extension[1].valueString = "COL6A1 mutation leading to Bethlem myopathy with recurrent hematuria: a case report."

Instance: AbsentCranialNerveAbnormality
InstanceOf: PhenotypicFeature
Title: "Absent Cranial Nerve Abnormality"
* status = #final
* code = HPO#HP:0031910 "Abnormal cranial nerve physiology"
* interpretation = OBS_INT#NEG "Negative"
* subject = Reference(Proband)
* extension[0].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/Evidence"
* extension[0].extension[0].url = "evidenceCode"
* extension[0].extension[0].valueCodeableConcept = ECO#ECO:0000033 "author statement supported by traceable reference"
* extension[0].extension[1].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/ExternalReference"
* extension[0].extension[1].extension[0].url = "_id"
* extension[0].extension[1].extension[0].valueUrl = "http://www.ncbi.nlm.nih.gov/pubmed/30808312"
* extension[0].extension[1].extension[1].url = "description"
* extension[0].extension[1].extension[1].valueString = "COL6A1 mutation leading to Bethlem myopathy with recurrent hematuria: a case report."

Instance: MotorDelay
InstanceOf: PhenotypicFeature
Title: "Motor Delay"
* status = #final
* code = HPO#HP:0001270 "Motor delay"
* interpretation = OBS_INT#POS "Positive"
* subject = Reference(Proband)
* extension[0].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/Onset"
* extension[0].valueCodeableConcept = HPO#HP:0011463 "Childhood onset"
* extension[1].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/Severity"
* extension[1].valueCodeableConcept = HPO#HP:0012825 "Mild"

Instance: Hematuria
InstanceOf: PhenotypicFeature
Title: "Hematuria"
* status = #final
* code = HPO#HP:0012587 "Macroscopic hematuria"
* interpretation = OBS_INT#POS "Positive"
* subject = Reference(Proband)
* extension[0].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/Onset"
* extension[0].valueAge.system = "http://unitsofmeasure.org"
* extension[0].valueAge.code = #a
* extension[0].valueAge.value = 14
* extension[1].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/PhenotypicFeatureModifier"
* extension[1].valueCodeableConcept = HPO#HP:0031796 "Recurrent"
* extension[2].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/Evidence"
* extension[2].extension[0].url = "evidenceCode"
* extension[2].extension[0].valueCodeableConcept = ECO#ECO:0000033 "author statement supported by traceable reference"
* extension[2].extension[1].url = "http://ga4gh.org/fhir/phenopackets/StructureDefinition/ExternalReference"
* extension[2].extension[1].extension[0].url = "_id"
* extension[2].extension[1].extension[0].valueUrl = "http://www.ncbi.nlm.nih.gov/pubmed/30808312"
* extension[2].extension[1].extension[1].url = "description"
* extension[2].extension[1].extension[1].valueString = "COL6A1 mutation leading to Bethlem myopathy with recurrent hematuria: a case report."

Instance: Author
InstanceOf: Organization
Title: "Author"
* name = "CSIRO"

Instance: RareDiseasePhenopacket
InstanceOf: Phenopacket
Title: "Rare Disease Phenopacket"
* status = #final
* type = DOC_TYPE#phenopacket "Phenopacket"
* date = "2020-02-17"
* title = "Phenopacket"
* subject = Reference(Proband)
* author = Reference(Author)
* section[0].title = "Phenotypic Features"
* section[0].code = SectionType#observations "Observations"
* section[0].mode = #snapshot
* section[0].entry[0] = Reference(DecreasedFetalMovement)
* section[0].entry[1] = Reference(AbsentCranialNerveAbnormality)
* section[0].entry[2] = Reference(MotorDelay)
* section[0].entry[3] = Reference(Hematuria)
* section[1].title = "Variants"
* section[1].code = SectionType#variants "Variants"
* section[1].mode = #snapshot
* section[1].entry[0] = Reference(HeterozygousCOL6A1Variant)

//Instance: RareDiseaseBundle
//InstanceOf: Bundle
//Title: "Rare Disease Bundle"
//* type = #document
//* identifier.system = "http://ga4gh.org/fhir/phenopackets/"
//* identifier.value = "1"
//* entry[0].resource = RareDiseasePhenopacket
//* entry[1].resource = Proband
//* entry[2].resource = Author
//* entry[3].resource = DecreasedFetalMovement
//* entry[4].resource = AbsentCranialNerveAbnormality
//* entry[5].resource = MotorDelay
//* entry[6].resource = Hematuria
//* entry[7].resource = HeterozygousCOL6A1Variant
