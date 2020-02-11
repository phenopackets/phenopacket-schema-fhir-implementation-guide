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

CodeSystem: FamilyMemberType
Title: "Family Member Type"
Description: "Represents the types of members in a family."
* #proband "Proband"
* #relative "Relative"

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
* codes from system http://purl.obolibrary.org/obo/hp.owl where concept descendent-of #HP:0000118
* codes from system http://snomed.info/sct where concept descendent-of #404684003

ValueSet: TumorGrade
Title: "Tumor Grade"
Description: "Codes to indicate the grade of a tumor."
* codes from system http://purl.obolibrary.org/obo/ncit.owl where concept descendent-of #NCIT:C28076

ValueSet: Onset
Title: "Onset"
Description: "Onset codes from the Human Phenotype Ontology and SNOMED CT."
* codes from system http://purl.obolibrary.org/obo/hp.owl where concept descendent-of #HP:0003674
* codes from system http://snomed.info/sct where concept descendent-of #282032007

ValueSet: HistologicalDiagnosis
Title: "HistologicalDiagnosis"
Description: "Histological diagnosis codes from NCIT."
* codes from system http://purl.obolibrary.org/obo/ncit.owl where concept descendent-of #NCIT:C28101
* codes from system http://purl.obolibrary.org/obo/ncit.owl where concept descendent-of #NCIT:C2991

ValueSet: PhenotypicFeatureModifier
Title: "Phenotypic Feature Modifier"
Description: "Clinical modifier codes from the Human Phenotype Ontology. TODO: include corresponding codes from SNOMED CT."
* codes from system http://purl.obolibrary.org/obo/hp.owl where concept descendent-of #HP:0012823
* codes from system http://purl.obolibrary.org/obo/hp.owl where concept descendent-of #HP:0031797

ValueSet: TumorStage
Title: "Tumor Stage"
Description: "Codes to represent the stage of a tumor."
* codes from system http://purl.obolibrary.org/obo/ncit.owl where concept descendent-of #NCIT:C48232

ValueSet: PhenotypicFeatureInterpretation
Title: "Phenotypic Feature Interpretation"
Description: "Codes to indicate the interpretation of a phenotypic feature (present or absent)."
* http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#NEG "Negative"
* http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"

ValueSet: FamilyMemberType
Title: "Family Member Type"
Description: "Represents the types of members in a family."
* codes from system FamilyMemberType

ValueSet: KaryotypicSex
Title: "Karyotypic Sex"
Description: "Represents the chromosomal sex of an individual."
* codes from system KaryotypicSex

ValueSet: Evidence
Title: "Evidence"
Description: "Codes from the Evidence & Conclusion Ontology."
* codes from system http://purl.obolibrary.org/obo/eco.owl

ValueSet: HTSFormat
Title: "HTS Format"
Description: "Represents different high-throughput sequencing file formats."
* codes from system HtsFormat

ValueSet: PedigreeAffectedStatus
Title: "Pedigree Affected Status"
Description: "An enumeration used to represent whether a person is affected by a condition of interest in the context of a pedigree."
* codes from system AffectedStatus

ValueSet: Taxonomy
Title: "Taxonomy"
Description: "Taxonomic identifiers of an organism."
* codes from system http://purl.obolibrary.org/obo/ncbitaxon.owl

ValueSet: PhenotypicFeatureSeverity
Title: "Phenotypic Feature Severity"
Description: "Phenotypic feature severity codes from the Human Phenotype Ontology and SNOMED CT."
* codes from system http://purl.obolibrary.org/obo/hp.owl where concept descendent-of #HP:0012824
* codes from system http://snomed.info/sct where concept descendent-of #272141005

ValueSet: TumorProgression
Title: "Tumor Progression"
Description: "Codes to indicate if a specimen is from the primary tumor, a metastasis or a recurrence."
* http://purl.obolibrary.org/obo/ncit.owl#NCIT:C8509 "Primary Neoplasm"
* http://purl.obolibrary.org/obo/ncit.owl#NCIT:C3261 "Metastatic Neoplasm"
* http://purl.obolibrary.org/obo/ncit.owl#NCIT:C4798 "Recurrent Neoplasm"

ValueSet: DiagnosticMarkers
Title: "Diagnostic Markers"
Description: "Codes to indicate clinically relevant bio markers."
* codes from system http://purl.obolibrary.org/obo/ncit.owl where concept descendent-of #NCIT:C36292

// EXTENSIONS 

Extension: PedigreeNodeFamilyIdentifier
Id: pedigree-node-family-identifier
Title: "Pedigree Node Family Identifier"
Description: "The family identifier and the individual identifiers may be made up of letters and digits, and the combination of family and individual identifiers should uniquely identify each person represented in the PED file."
* ^context.type = #element
* ^context.expression =  "FamilyMemberHistory"
* value[x] only Identifier


Extension: PedigreeNodeAffectedStatus
Id: pedigree-node-affected-status
Title: "Pedigree Node Affected Status"
Description: "Indicates if the individual has the affected phenotype of the proband."
* ^context.type = #element
* ^context.expression =  "FamilyMemberHistory"
* valueCoding from PedigreeAffectedStatus (required)

Extension: FamilyMemberPhenopacket
Id: family-member-phenopacket
Title: "Family Member Phenopacket"
Description: "A reference to a phenopacket associated to this family member."
* ^context.type = #element
* ^context.expression =  "Group.member"
* value[x] only Reference(Phenopacket)


Extension: InterpretationPhenopacket
Id: interpretation-phenopacket
Title: "Interpretation Phenopacket"
Description: "An extension to reference a Phenopacket,an anonymous phenotypic description of an individual or biosample with potential genes of interest and/or diagnoses."
* ^context.type = #element
* ^context.expression =  "DiagnosticReport"
* value[x] only Reference(Phenopacket)


Extension: ExternalReference
Id: external-reference
Title: "External Reference"
Description: "This element encodes the evidence type using, for example the Evidence & Conclusion Ontology (ECO)."
* ^context.type = #element
* ^context.expression =  "Extension"
* extension contains _id 1..1 and description 0..1
* extension[_id].url = "id"
* extension[_id].value[x] only url
* extension[description].url = "description"
* extension[description].value[x] only string

Extension: PhenotypicFeatureSeverity
Id: phenotypic-feature-severity
Title: "Phenotypic Feature Severity"
Description: "The severity of a phenotype."
* ^context.type = #element
* ^context.expression =  "Observation"
* valueCodeableConcept from PhenotypicFeatureSeverity (required)

Extension: PhenotypicFeatureOnset
Id: phenotypic-feature-onset
Title: "Phenotypic Feature Onset"
Description: "Describes the age at which a phenotypic feature was first noticed or diagnosed."
* ^context.type = #element
* ^context.expression =  "Observation"
* value[x] only dateTime or Age or Period or Range or string or CodeableConcept

Extension: PedigreeNodeIndividual
Id: pedigree-node-individual
Title: "Pedigree Node Individual"
Description: "A reference to the individual referenced by this pedigree node."
* ^context.type = #element
* ^context.expression =  "FamilyMemberHistory"
* value[x] only Reference(Individual)


Extension: HTSFileGenomeAssembly
Id: htsfile-genome-assembly
Title: "HTS File Genome Assembly"
Description: "The genome assembly the contents of this file was called against. We recommend using the Genome Reference Consortium nomenclature e.g. GRCh37, GRCh38."
* ^context.type = #element
* ^context.expression =  "DocumentReference"
* value[x] only string


Extension: DiseaseOnset
Id: disease-onset
Title: "Disease Onset"
Description: "The onset of the disease using an ontology class."
* ^context.type = #element
* ^context.expression =  "Condition"
* valueCodeableConcept from Onset (required)

Extension: FamilyMemberType
Id: family-member-type
Title: "Family Member Type"
Description: "The type of member of this family."
* ^context.type = #element
* ^context.expression =  "Group.member"
* valueCodeableConcept from FamilyMemberType (required)

Extension: DiagnosticMarkers
Id: biosample-diagnostic-markers
Title: "Diagnostic Markers"
Description: "Clinically relevant bio markers. Most of the assays such as immunohistochemistry (IHC) are covered by the NCIT under the sub-hierarchy NCIT:C36292 (Laboratory Test Result), e.g. NCIT:C68748 (HER2/Neu Positive), NCIT:C131711 (Human Papillomavirus-18 Positive)."
* ^context.type = #element
* ^context.expression =  "Specimen"
* valueCodeableConcept from DiagnosticMarkers (example)

Extension: Evidence
Id: evidence
Title: "Evidence"
Description: "This element intends to represent the evidence for an assertion such as an observation of a PhenotypicFeature element. We recommend the use of terms from the Evidence and Conclusion Ontology (ECO)."
* ^context.type = #element
* ^context.expression =  "Observation"
* extension contains evidenceCode 1..1 and reference 0..1
* extension[evidenceCode].url = "evidenceCode"
* extension[evidenceCode].value[x] only CodeableConcept
* extension[evidenceCode].valueCodeableConcept from Evidence (preferred)

Extension: IndividualAge
Id: individual-age
Title: "Individual Age"
Description: "An age object describing the age of the individual at the time of collection of biospecimens or phenotypic observations reported in the current Phenopacket."
* ^context.type = #element
* ^context.expression =  "Encounter"
* value[x] only Age or Range

Extension: PedigreeNode
Id: pedigree-node
Title: "Pedigree Node"
Description: "Describes the family relationships of each specimen along with their gender and phenotype."
* ^context.type = #element
* ^context.expression =  "Group"
* value[x] only Reference(PedigreeNode)


Extension: IndividualTaxonomy
Id: individual-taxonomy
Title: "Individual Taxonomy"
Description: "For resources where there may be more than one organism being studied it is advisable to indicate the taxonomic identifier of that organism, to its most specific level."
* ^context.type = #element
* ^context.expression =  "Patient"
* valueCodeableConcept from Taxonomy (required)

Extension: HistologicalDiagnosis
Id: biosample-histological-diagnosis
Title: "Histological Diagnosis"
Description: "This is the pathologist’s diagnosis and may often represent a refinement of the clinical diagnosis (which could be reported in the Phenopacket that contains this Biosample). Normal samples would be tagged with the term “NCIT:C38757”, “Negative Finding”."
* ^context.type = #element
* ^context.expression =  "Specimen"
* valueCodeableConcept from HistologicalDiagnosis (required)

Extension: Variants
Id: variants
Title: "Variants"
Description: "This is a field for genetic variants and can be used for listing either candidate variants or diagnosed causative variants. If this biosample represents a cancer specimen, the variants might refer to somatic variants identified in the biosample. The resources using these fields should define what this represents in their context."
* ^context.type = #element
* ^context.expression =  "DiagnosticReport"
* value[x] only Reference(http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)


Extension: IndividualKaryotypicSex
Id: individual-karyotypic-sex
Title: "Individual Karyotypic Sex"
Description: "The chromosomal sex of an individual."
* ^context.type = #element
* ^context.expression =  "Patient"
* valueCodeableConcept from KaryotypicSex (required)

Extension: TumorStage
Id: disease-tumor-stage
Title: "Tumor Stage"
Description: "This element can be used if the phenopacket describes cancer. Tumor staging describes the extent of growth of cancer, including the tumor and, if applicable, affected lymph nodes and distant metastases. This element should be derived from child terms of NCIT:C48232 (Cancer TNM Finding) or equivalent."
* ^context.type = #element
* ^context.expression =  "Condition"
* valueCodeableConcept from TumorStage (example)

Extension: TumorProgression
Id: biosample-tumor-progression
Title: "Tumor Progression"
Description: "This field can be used to indicate if a specimen is from the primary tumor, a metastasis or a recurrence. There are multiple ways of representing this using ontology terms, and the terms chosen should have a specific meaning that is application specific."
* ^context.type = #element
* ^context.expression =  "Specimen"
* valueCodeableConcept from TumorProgression (example)

Extension: HtsFiles
Id: htsfiles
Title: "Hts Files"
Description: "List of high-throughput sequencing files generated as part of a genomic test."
* ^context.type = #element
* ^context.expression =  "DiagnosticReport"
* value[x] only Reference(HtsFile)


Extension: BiosampleControl
Id: biosample-control
Title: "Biosample Control"
Description: "Is this a control biosample?"
* ^context.type = #element
* ^context.expression =  "Specimen"
* value[x] only boolean


Extension: PhenotypicFeatureModifier
Id: phenotypic-feature-modifier
Title: "Phenotypic Feature Modifier"
Description: "A collection of ontology class elements that are intended to provide more expressive or precise descriptions of a phenotypic feature, including attributes such as positionality and external factors that tend to trigger or ameliorate the feature."
* ^context.type = #element
* ^context.expression =  "Observation"
* valueCodeableConcept from PhenotypicFeatureModifier (required)

Extension: TumorGrade
Id: biosample-tumor-grade
Title: "Tumor Grade"
Description: "List of terms representing the tumor grade. This should be a child term of NCIT:C28076 (Disease Grade Qualifier) or equivalent."
* ^context.type = #element
* ^context.expression =  "Specimen"
* valueCodeableConcept from TumorGrade (example)

Extension: BiosampleIndividualAgeAtCollection
Id: biosample-individual-age-at-collection
Title: "Biosample Individual Age at Collection"
Description: "Age of the proband at the time the biosample was taken."
* ^context.type = #element
* ^context.expression =  "Specimen"
* value[x] only Age or Range

// PROFILES 

Profile: Phenopacket
Parent: Composition
Id: Phenopacket
Title: "Phenopacket"
Description: "A Phenopacket is an anonymous phenotypic description of an individual or biosample with potential genes of interest and/or diagnoses."
* type.coding.system = "http://ga4gh.org/fhir/phenopackets/CodeSystem/document-type"
* type.coding.code = #phenopacket
* subject only Reference(Individual)
* title = "Phenopacket"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #closed
* section contains phenotypicFeatures 0..1
* section[phenotypicFeatures].title = "Phenotypic Features"
* section[phenotypicFeatures].code = http://ga4gh.org/fhir/phenopackets/CodeSystem/section-type#phenotypic-features "Phenotypic Features"
* section[phenotypicFeatures].entry only Reference(PhenotypicFeature)
* section contains biosamples 0..1
* section[biosamples].title = "Biosamples"
* section[biosamples].code = http://ga4gh.org/fhir/phenopackets/CodeSystem/section-type#biosamples "Biosamples"
* section[biosamples].entry only Reference(Biosample)
* section contains variants 0..1
* section[variants].title = "Variants"
* section[variants].code = http://ga4gh.org/fhir/phenopackets/CodeSystem/section-type#variants "Variants"
* section[variants].entry only Reference(http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant)
* section contains diseases 0..1
* section[diseases].title = "Diseases"
* section[diseases].code = http://ga4gh.org/fhir/phenopackets/CodeSystem/section-type#diseases "Diseases"
* section[diseases].entry only Reference(Disease)
* section contains htsFiles 0..1
* section[htsFiles].title = "HTS Files"
* section[htsFiles].code = http://ga4gh.org/fhir/phenopackets/CodeSystem/section-type#hts-files "HTS Files"
* section[htsFiles].entry only Reference(HtsFile)

Profile: PedigreeNode
Parent: http://hl7.org/fhir/StructureDefinition/familymemberhistory-genetic
Id: PedigreeNode
Title: "Pedigree Node"
Description: "The Phenopackets Pedigree element represents a PED file, which describes the family relationships of each specimen along with their gender and phenotype. PED files are typically used by software for genetic linkage analysis. PED files have six mandatory columns, and additional optional columns (that are typically not used in the context of genomic analysis). FHIR already has resources and extensions that represent a pedigree. A pedigree node extends the FamilyMemberHistory-Genetic profile."
* extension contains PedigreeNodeAffectedStatus 1..1 MS and PedigreeNodeFamilyIdentifier 1..1 MS and PedigreeNodeIndividual 0..1 MS
* patient MS
* sex[Sex] 1..1

Profile: Interpretation
Parent: http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomics-report
Id: Interpretation
Title: "Interpretation"
Description: "Represents the interpretation of a genomic analysis, such as the report from a diagnostic laboratory."
* extension contains InterpretationPhenopacket 0..1 MS
* subject only Reference(Individual | Family)
* subject MS
* status MS
* result[overall] MS
* result[inh-dis-path] MS
* result[variant] MS
* result[region-studied] MS

Profile: Individual
Parent: Patient
Id: Individual
Title: "Individual"
Description: "The subject of the Phenopacket is represented by an Individual element. This element intends to represent an individual human or other organism."
* extension contains IndividualAge 0..1 MS and IndividualKaryotypicSex 0..1 MS and IndividualTaxonomy 0..1 MS
* identifier MS
* birthDate MS
* gender MS

// Need extensions to reference Cohort and Phenopacket
Profile: HtsFile
Parent: DocumentReference
Id: HtsFile
Title: "Hts File"
Description: "Phenopackets can be used to hold phenotypic information that can inform the analysis of sequencing data in VCF format as well as other high-throughput sequencing (HTS) or other data types."
* extension contains HTSFileGenomeAssembly 1..1 MS
* status = #current
* status MS
* type from HTSFormat (required)
* type 1..1
* type MS
* subject only Reference(Family)
* subject MS

Profile: Biosample
Parent: Specimen
Id: Biosample
Title: "Biosample"
Description: "A unit of biological material from which the substrate molecules (e.g. genomic DNA, RNA, proteins) for molecular analyses (e.g. sequencing, array hybridisation, mass-spectrometry) are extracted."
* extension contains BiosampleIndividualAgeAtCollection 0..1 MS and HistologicalDiagnosis 0..1 MS and TumorProgression 0..1 MS and TumorGrade 0..1 MS and DiagnosticMarkers 0..1 MS and HtsFiles 0..* MS and Variants 0..* MS and BiosampleControl 0..1 MS
* identifier MS
* subject MS
* note MS
* type MS

Profile: Disease
Parent: Condition
Id: Disease
Title: "Disease"
Description: "The word phenotype is used with many different meanings, including 'the observable traits of an organism'. In medicine, the word can be used with at least two different meanings. It is used to refer to some observed deviation from normal morphology, physiology, or behavior. In contrast, the disease is a diagnosis, i.e., and inference or hypothesis about the cause underlying the observed phenotypic abnormalities. Occasionally, physicians use the word phenotype to refer to a disease, but we do not use this meaning here."
* extension contains DiseaseOnset 0..1 MS and TumorStage 0..1 MS
* subject 1..1
* subject MS
* code MS
* onset[x] MS

Profile: Cohort
Parent: Composition
Id: Cohort
Title: "Cohort"
Description: "A group of individuals related in some phenotypic or genotypic aspect."
* type.coding.system = "http://ga4gh.org/fhir/phenopackets/CodeSystem/document-type"
* type.coding.code = #cohort
* subject 0..0
* title = "Cohort"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #closed
* section contains members 1..1
* section[members].title = "Members"
* section[members].code = http://ga4gh.org/fhir/phenopackets/CodeSystem/section-type#members "Members"
* section[members].entry only Reference(Phenopacket)
* section contains htsFiles 0..1
* section[htsFiles].title = "HTS Files"
* section[htsFiles].code = http://ga4gh.org/fhir/phenopackets/CodeSystem/section-type#hts-files "HTS files"
* section[htsFiles].entry only Reference(HtsFile)

Profile: PhenotypicFeature
Parent: Observation
Id: PhenotypicFeature
Title: "Phenotypic Feature"
Description: "This element is intended to be used to describe a phenotype that characterizes the subject of the Phenopacket. For medical use cases the subject will generally be a patient or a proband of a study, and the phenotypes will be abnormalities described by an ontology such as the Human Phenotype Ontology. The word phenotype is used with many different meanings including disease entity, but in this context we mean an individual phenotypic feature, observed as either present or absent, with possible onset, modifiers and frequency."
* extension contains PhenotypicFeatureSeverity 0..1 MS and PhenotypicFeatureModifier 0..* MS and PhenotypicFeatureOnset 0..1 MS and Evidence 0..* MS
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

Profile: Family
Parent: Group
Id: Family
Title: "Family"
Description: "Phenotype, sample and pedigree data required for a genomic diagnosis."
* extension contains HtsFiles 0..* MS and PedigreeNode 1..1 MS
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

