// ALIASES
Alias: SCT = http://snomed.info/sct
Alias: HPO = http://purl.obolibrary.org/obo/hp.owl
Alias: NCIT = http://purl.obolibrary.org/obo/ncit.owl
Alias: V3_OBSERVATION_INTERPRETATION = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: ECO = http://purl.obolibrary.org/obo/eco.owl
Alias: NCBI_TAXON = http://purl.obolibrary.org/obo/ncbitaxon.owl

// CODE SYSTEMS
CodeSystem: KaryotypicSex
Title: "Karyotypic Sex"
Description: "Represents the chromosomal sex of an individual."
* #UNKNOWN_KARYOTYPE "Untyped or inconclusive karyotyping"
* #XX "Female"
* #XY "Male"
* #XO "Single X chromosome only"
* #XXY "Two X and one Y chromosome"
* #XXX "Three X chromosomes"
* #XXYY "Two X chromosomes and two Y chromosomes"
* #XXXY "Three X chromosomes and one Y chromosome"
* #XXXX "Four X chromosomes"
* #XYY "One X and two Y chromosomes"
* #OTHER_KARYOTYPE "None of the above types"

CodeSystem: AffectedStatus
Title: "Affected Status"
Description: "An enumeration used to represent whether a person is affected by a condition of interest in the context of a pedigree."
* #missing "Missing"
* #unaffected "Unaffected"
* #Affected "Affected"

CodeSystem: SectionType
Title: "Section Type"
Description: "Represents the different types of sections in the objects that are built as compositions in the Phenopackets standard."
* #observations "Observations"
* #encounters "Encounters"
* #diseases "Diseases"
* #biosamples "Biosamples"
* #genomics-reports "Genomics reports"
* #relatives "Relatives"
* #pedigree "Pedigree"
* #hts-files "HTS files"
* #members "Members"
* #phenotypic-features "Phenotypic features"
* #variants "Variants"

CodeSystem: DocumentType
Title: "Document Type"
Description: "Represents the different types of documents in the Phenopackets standard."
* #phenopacket "Phenopacket"
* #cohort "Cohort"

CodeSystem: HtsFormat
Title: "HTS Format"
Description: "An enumeration used to represent different high-throughput sequencing file formats."
* #UNKNOWN "Unknown"
* #SAM "SAM"
* #BAM "BAM"
* #CRAM "CRAM"
* #VCF "VCF"
* #BCF "BCF"
* #GVCF "GVCF"

// VALUE SETS 
ValueSet: PhenotypicFeatureType
Title: "Phenotypic Feature Type"
Description: "The primary ontology class which describes the phenotype."
* codes from system HPO where concept descendent-of #HP:0000118
* codes from system SCT where concept descendent-of #404684003

ValueSet: TumorGrade
Title: "Tumor Grade"
Description: "Codes to indicate the grade of a tumor."
* codes from system NCIT where concept descendent-of #NCIT:C28076

ValueSet: Onset
Title: "Onset"
Description: "Onset codes from the Human Phenotype Ontology and SNOMED CT."
* codes from system HPO where concept descendent-of #HP:0003674
* codes from system SCT where concept descendent-of #282032007

ValueSet: HistologicalDiagnosis
Title: "HistologicalDiagnosis"
Description: "Histological diagnosis codes from NCIT."
* codes from system NCIT where concept descendent-of #NCIT:C28101
* codes from system NCIT where concept descendent-of #NCIT:C2991

ValueSet: PhenotypicFeatureModifier
Title: "Phenotypic Feature Modifier"
Description: "Clinical modifier codes from the Human Phenotype Ontology. TODO: include corresponding codes from SNOMED CT."
* codes from system HPO where concept descendent-of #HP:0012823
* codes from system HPO where concept descendent-of #HP:0031797

ValueSet: TumorStage
Title: "Tumor Stage"
Description: "Codes to represent the stage of a tumor."
* codes from system NCIT where concept descendent-of #NCIT:C48232

ValueSet: PhenotypicFeatureInterpretation
Title: "Phenotypic Feature Interpretation"
Description: "Codes to indicate the interpretation of a phenotypic feature (present or absent)."
* V3_OBSERVATION_INTERPRETATION#NEG "Negative"
* V3_OBSERVATION_INTERPRETATION#POS "Positive"

ValueSet: KaryotypicSex
Title: "Karyotypic Sex"
Description: "Represents the chromosomal sex of an individual."
* codes from system KaryotypicSex

ValueSet: Evidence
Title: "Evidence"
Description: "Codes from the Evidence & Conclusion Ontology."
* codes from system ECO

ValueSet: HTSFormat
Title: "HTS Format"
Description: "Represents different high-throughput sequencing file formats."
* codes from system HtsFormat

ValueSet: AffectedStatus
Title: "Affected Status"
Description: "An enumeration used to represent whether a person is affected by a condition of interest in the context of a pedigree."
* codes from system AffectedStatus

ValueSet: Taxonomy
Title: "Taxonomy"
Description: "Taxonomic identifiers of an organism."
* codes from system NCBI_TAXON

ValueSet: Severity
Title: "Severity"
Description: "Phenotypic feature severity codes from the Human Phenotype Ontology and SNOMED CT."
* codes from system HPO where concept descendent-of #HP:0012824
* codes from system SCT where concept descendent-of #272141005

ValueSet: TumorProgression
Title: "Tumor Progression"
Description: "Codes to indicate if a specimen is from the primary tumor, a metastasis or a recurrence."
* NCIT#NCIT:C8509 "Primary Neoplasm"
* NCIT#NCIT:C3261 "Metastatic Neoplasm"
* NCIT#NCIT:C4798 "Recurrent Neoplasm"

ValueSet: DiagnosticMarkers
Title: "Diagnostic Markers"
Description: "Codes to indicate clinically relevant bio markers."
* codes from system NCIT where concept descendent-of #NCIT:C36292

// EXTENSIONS 
Extension: FamilyIdentifier
Id: FamilyIdentifier
Title: "Family Identifier"
Description: "A family identifier. Used to export to PED file format."
* ^context.type = #element
* ^context.expression =  "FamilyMemberHistory"
* value[x] only Identifier

Extension: AffectedStatus
Id: AffectedStatus
Title: "Affected Status"
Description: "Indicates if the individual has the affected phenotype of the proband."
* ^context.type = #element
* ^context.expression =  "FamilyMemberHistory"
* valueCoding from AffectedStatus (required)

Extension: PhenopacketReference
Id: PhenopacketReference
Title: "Phenopacket Reference"
Description: "An extension to reference a Phenopacket."
* ^context.type = #element
* ^context.expression =  "DiagnosticReport"
* value[x] only Reference(Phenopacket)

Extension: ExternalReference
Id: ExternalReference
Title: "External Reference"
Description: "This element encodes information about an external reference."
* ^context.type = #element
* ^context.expression =  "Extension"
* extension contains _id 1..1 and description 0..1
* extension[_id].url = "_id"
* extension[_id].value[x] only url
* extension[description].url = "description"
* extension[description].value[x] only string

Extension: Severity
Id: Severity
Title: "Severity"
Description: "The severity of a phenotype."
* ^context.type = #element
* ^context.expression =  "Observation"
* valueCodeableConcept from Severity (required)

Extension: Onset
Id: Onset
Title: "Onset"
Description: "Describes the age at which a phenotypic feature was first noticed or diagnosed."
* ^context.type = #element
* ^context.expression =  "Observation"
* value[x] only dateTime or Age or Period or Range or string or CodeableConcept

Extension: IndividualReference
Id: IndividualReference
Title: "Individual Reference"
Description: "A reference to an individual associated to a pedigree node."
* ^context.type = #element
* ^context.expression =  "FamilyMemberHistory"
* value[x] only Reference(Individual)

Extension: GenomeAssembly
Id: GenomeAssembly
Title: "Genome Assembly"
Description: "The genome assembly that a file was called against. We recommend using the Genome Reference Consortium nomenclature e.g. GRCh37, GRCh38."
* ^context.type = #element
* ^context.expression =  "DocumentReference"
* value[x] only string

Extension: CodedOnset
Id: CodedOnset
Title: "Coded Onset"
Description: "The onset of a disease using an ontology class."
* ^context.type = #element
* ^context.expression =  "Condition"
* valueCodeableConcept from Onset (required)

Extension: DiagnosticMarkers
Id: DiagnosticMarkers
Title: "Diagnostic Markers"
Description: "Clinically relevant bio markers. Most of the assays such as immunohistochemistry (IHC) are covered by the NCIT under the sub-hierarchy NCIT:C36292 (Laboratory Test Result), e.g. NCIT:C68748 (HER2/Neu Positive), NCIT:C131711 (Human Papillomavirus-18 Positive)."
* ^context.type = #element
* ^context.expression =  "Specimen"
* valueCodeableConcept from DiagnosticMarkers (example)

Extension: Evidence
Id: Evidence
Title: "Evidence"
Description: "This element intends to represent the evidence for an assertion such as an observation of a PhenotypicFeature element."
* ^context.type = #element
* ^context.expression =  "Observation"
* extension contains evidenceCode 1..1 and ExternalReference 0..1
* extension[evidenceCode].url = "evidenceCode"
* extension[evidenceCode].value[x] only CodeableConcept
* extension[evidenceCode].valueCodeableConcept from Evidence (preferred)

Extension: AgeOrAgeRange
Id: AgeOrAgeRange
Title: "Age Or Age Range"
Description: "An age or an age range."
* ^context[0].type = #element
* ^context[0].expression =  "Patient"
* ^context[1].type = #element
* ^context[1].expression = "Specimen"
* value[x] only Age or Range

Extension: PedigreeNodeReference
Id: PedigreeNodeReference
Title: "Pedigree Node Reference"
Description: "A reference to a pedigree node."
* ^context.type = #element
* ^context.expression =  "Group"
* value[x] only Reference(PedigreeNode)

Extension: Taxonomy
Id: Taxonomy
Title: "Taxonomy"
Description: "For resources where there may be more than one organism being studied it is advisable to indicate the taxonomic identifier of that organism, to its most specific level."
* ^context.type = #element
* ^context.expression =  "Patient"
* valueCodeableConcept from Taxonomy (required)

Extension: HistologicalDiagnosis
Id: HistologicalDiagnosis
Title: "Histological Diagnosis"
Description: "This is the pathologist’s diagnosis and may often represent a refinement of the clinical diagnosis (which could be reported in the Phenopacket that contains this Biosample). Normal samples would be tagged with the term “NCIT:C38757”, “Negative Finding”."
* ^context.type = #element
* ^context.expression =  "Specimen"
* valueCodeableConcept from HistologicalDiagnosis (required)

Extension: VariantReference
Id: VariantReference
Title: "Variant Reference"
Description: "References a variant observation."
* ^context.type = #element
* ^context.expression =  "DiagnosticReport"
* value[x] only Reference(http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)

Extension: KaryotypicSex
Id: KaryotypicSex
Title: "Karyotypic Sex"
Description: "The chromosomal sex of an individual."
* ^context.type = #element
* ^context.expression =  "Patient"
* valueCodeableConcept from KaryotypicSex (required)

Extension: TumorStage
Id: TumorStage
Title: "Tumor Stage"
Description: "This element can be used if the phenopacket describes cancer. Tumor staging describes the extent of growth of cancer, including the tumor and, if applicable, affected lymph nodes and distant metastases."
* ^context.type = #element
* ^context.expression =  "Condition"
* valueCodeableConcept from TumorStage (example)

Extension: TumorProgression
Id: TumorProgression
Title: "Tumor Progression"
Description: "This field can be used to indicate if a specimen is from the primary tumor, a metastasis or a recurrence. There are multiple ways of representing this using ontology terms, and the terms chosen should have a specific meaning that is application specific."
* ^context.type = #element
* ^context.expression =  "Specimen"
* valueCodeableConcept from TumorProgression (example)

Extension: HtsFileReference
Id: HtsFileReference
Title: "Hts File Reference"
Description: "Reference to a high-throughput sequencing file generated as part of a genomic test."
* ^context.type = #element
* ^context.expression =  "DiagnosticReport"
* value[x] only Reference(HtsFile)

Extension: BiosampleControl
Id: BiosampleControl
Title: "Biosample Control"
Description: "Is this a control biosample?"
* ^context.type = #element
* ^context.expression =  "Specimen"
* value[x] only boolean

Extension: PhenotypicFeatureModifier
Id: PhenotypicFeatureModifier
Title: "Phenotypic Feature Modifier"
Description: "This element is a list of ontology class elements intended to provide more expressive or precise descriptions of a phenotypic feature, including attributes such as positionality and external factors that tend to trigger or ameliorate the feature."
* ^context.type = #element
* ^context.expression =  "Observation"
* valueCodeableConcept from PhenotypicFeatureModifier (required)

Extension: TumorGrade
Id: TumorGrade
Title: "Tumor Grade"
Description: "List of terms representing the tumor grade."
* ^context.type = #element
* ^context.expression =  "Specimen"
* valueCodeableConcept from TumorGrade (example)

// PROFILES 
Profile: Biosample
Parent: Specimen
Id: Biosample
Title: "Biosample"
Description: "A unit of biological material from which the substrate molecules (e.g. genomic DNA, RNA, proteins) for molecular analyses (e.g. sequencing, array hybridisation, mass-spectrometry) are extracted."
* extension contains 
    AgeOrAgeRange 0..1 MS and 
    HistologicalDiagnosis 0..1 MS and 
    TumorProgression 0..1 MS and 
    TumorGrade 0..1 MS and 
    DiagnosticMarkers 0..* MS and 
    HtsFileReference 0..* MS and 
    VariantReference 0..* MS and 
    BiosampleControl 0..1 MS
* identifier MS
* subject MS
* note MS
* type MS

Profile: Disease
Parent: Condition
Id: Disease
Title: "Disease"
Description: "The word phenotype is used with many different meanings, including 'the observable traits of an organism'. In medicine, the word can be used with at least two different meanings. It is used to refer to some observed deviation from normal morphology, physiology, or behavior. In contrast, the disease is a diagnosis, i.e., and inference or hypothesis about the cause underlying the observed phenotypic abnormalities. Occasionally, physicians use the word phenotype to refer to a disease, but we do not use this meaning here."
* extension contains 
    CodedOnset 0..1 MS and 
    TumorStage 0..1 MS
* subject 1..1
* subject MS
* code MS
* onset[x] MS

// Need extensions to reference Cohort and Phenopacket
Profile: HtsFile
Parent: DocumentReference
Id: HtsFile
Title: "Hts File"
Description: "Phenopackets can be used to hold phenotypic information that can inform the analysis of sequencing data in VCF format as well as other high-throughput sequencing (HTS) or other data types."
* extension contains GenomeAssembly 1..1 MS
* status = #current
* status MS
* type from HTSFormat (required)
* type 1..1
* type MS
* subject only Reference(Family)
* subject MS

Profile: Individual
Parent: Patient
Id: Individual
Title: "Individual"
Description: "The subject of the Phenopacket is represented by an Individual element. This element intends to represent an individual human or other organism."
* extension contains 
    AgeOrAgeRange 0..1 MS and 
    KaryotypicSex 0..1 MS and 
    Taxonomy 0..1 MS
* identifier MS
* birthDate MS
* gender MS

Profile: PedigreeNode
Parent: http://hl7.org/fhir/StructureDefinition/familymemberhistory-genetic
Id: PedigreeNode
Title: "Pedigree Node"
Description: "The Phenopackets Pedigree element represents a PED file, which describes the family relationships of each specimen along with their gender and phenotype. PED files are typically used by software for genetic linkage analysis. PED files have six mandatory columns, and additional optional columns (that are typically not used in the context of genomic analysis). FHIR already has resources and extensions that represent a pedigree. A pedigree node extends the FamilyMemberHistory-Genetic profile."
* extension contains 
    AffectedStatus 1..1 MS and 
    FamilyIdentifier 1..1 MS and 
    IndividualReference 0..1 MS
* patient MS
* sex[Sex] 1..1

Profile: PhenotypicFeature
Parent: Observation
Id: PhenotypicFeature
Title: "Phenotypic Feature"
Description: "This element is intended to be used to describe a phenotype that characterizes the subject of the Phenopacket. For medical use cases the subject will generally be a patient or a proband of a study, and the phenotypes will be abnormalities described by an ontology such as the Human Phenotype Ontology. The word phenotype is used with many different meanings including disease entity, but in this context we mean an individual phenotypic feature, observed as either present or absent, with possible onset, modifiers and frequency."
* extension contains 
    Severity 0..1 MS and 
    PhenotypicFeatureModifier 0..* MS and 
    Onset 0..1 MS and 
    Evidence 0..* MS
* code from PhenotypicFeatureType (required)
* code MS
* subject only Reference(Individual)
* subject MS
* interpretation from PhenotypicFeatureInterpretation (required)
* interpretation 1..1
* interpretation MS
* note MS
* specimen MS
* value[x] 0..0
* focus 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0

Profile: Phenopacket
Parent: Composition
Id: Phenopacket
Title: "Phenopacket"
Description: "A Phenopacket is an anonymous phenotypic description of an individual or biosample with potential genes of interest and/or diagnoses."
* type.coding.system = "http://ga4gh.org/fhir/phenopackets/CodeSystem/DocumentType"
* type.coding.code = #phenopacket
* subject only Reference(Individual)
* title = "Phenopacket"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #closed
* section contains phenotypicFeatures 0..1
* section[phenotypicFeatures].title = "Phenotypic Features"
* section[phenotypicFeatures].code = SectionType#phenotypic-features "Phenotypic Features"
* section[phenotypicFeatures].entry only Reference(PhenotypicFeature)
* section contains biosamples 0..1
* section[biosamples].title = "Biosamples"
* section[biosamples].code = SectionType#biosamples "Biosamples"
* section[biosamples].entry only Reference(Biosample)
* section contains variants 0..*
* section[variants].title = "Variants"
* section[variants].code = SectionType#variants "Variants"
* section[variants].entry only Reference(http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)
* section contains diseases 0..1
* section[diseases].title = "Diseases"
* section[diseases].code = SectionType#diseases "Diseases"
* section[diseases].entry only Reference(Disease)
* section contains htsFiles 0..1
* section[htsFiles].title = "HTS Files"
* section[htsFiles].code = SectionType#hts-files "HTS Files"
* section[htsFiles].entry only Reference(HtsFile)

Profile: Family
Parent: Group
Id: Family
Title: "Family"
Description: "Phenotype, sample and pedigree data required for a genomic diagnosis."
* extension contains 
    HtsFiles 0..* MS and 
    PedigreeNodeReference 1..1 MS
* type = #person
* actual = true
* member.extension ^slicing.discriminator.type = #value
* member.extension ^slicing.discriminator.path = "url"
* member.extension ^slicing.ordered = false
* member.extension ^slicing.rules = #open
* member.extension contains family-member-type 1..1
* member.extension[family-member-type] MS
* member.extension contains family-member-phenopacket 1..1
* member.extension[family-member-phenopacket] MS

Profile: Cohort
Parent: Composition
Id: Cohort
Title: "Cohort"
Description: "A group of individuals related in some phenotypic or genotypic aspect."
* type.coding.system = "http://ga4gh.org/fhir/phenopackets/CodeSystem/DocumentType"
* type.coding.code = #cohort
* subject 0..0
* title = "Cohort"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #closed
* section contains members 1..*
* section[members].title = "Members"
* section[members].code = SectionType#members "Members"
* section[members].entry only Reference(Phenopacket)
* section contains htsFiles 0..*
* section[htsFiles].title = "HTS Files"
* section[htsFiles].code = SectionType#hts-files "HTS files"
* section[htsFiles].entry only Reference(HtsFile)

Profile: Interpretation
Parent: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-report
Id: Interpretation
Title: "Interpretation"
Description: "Represents the interpretation of a genomic analysis, such as the report from a diagnostic laboratory."
* extension contains PhenopacketReference 0..1 MS
* subject 1..1
* subject only Reference(Individual | Family) // the subject cannot be a Phenopacket so we use an extension and reference the individual
* subject MS
* status MS
* result[overall] MS
* result[inh-dis-path] MS
* result[variant] MS
* result[region-studied] MS
