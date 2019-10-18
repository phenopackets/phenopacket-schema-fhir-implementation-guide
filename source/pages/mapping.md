---
title: Mapping
layout: default
active: mapping
---

This page describes the mapping between the original Phenopackets and this FHIR implementation guide. The general approach followed was to look at the attributes in the FHIR resources that matched the attributes in the Phenopacket elements and to flag those as mandatory to support (_mustSupport = true_). This, combined with a profile-aware API generator, can be used to create an API that is simple to use and compliant with the profiles.

#### Building Blocks

| Phenopackets element                                                                             | Comment                                                                                                       |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------- |
| [Age](https://phenopackets-schema.readthedocs.io/en/latest/age.html)                             | Not needed because FHIR has its own [age](https://www.hl7.org/fhir/datatypes.html#Age) data type.             |
| [AgeRange](https://phenopackets-schema.readthedocs.io/en/latest/age.html#agerange)               | Not needed because FHIR has its own [range](https://www.hl7.org/fhir/datatypes.html#Range) data type.         |
| [Biosample](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html)                 | Corresponds to the [Biosample](StructureDefinition-Biosample.html) profile. See [notes](#notes).              |
| [Disease](https://phenopackets-schema.readthedocs.io/en/latest/disease.html)                     | Corresponds to the [Disease](StructureDefinition-Disease.html) profile.                                       |
| [Evidence](https://phenopackets-schema.readthedocs.io/en/latest/evidence.html)                   | Corresponds to the [evidence](StructureDefinition-evidence.html) extension.                                   |
| [ExternalReference](https://phenopackets-schema.readthedocs.io/en/latest/externalreference.html) | Corresponds to the [external reference](StructureDefinition-external-reference.html) extension.               |
| [Gene](https://phenopackets-schema.readthedocs.io/en/latest/gene.html)                           | Corresponds to [ObsRegionStudied](http://build.fhir.org/ig/HL7/genomics-reporting/region-studied.html) in the [FHIR Genomics Reporting Implementation Guide](http://build.fhir.org/ig/HL7/genomics-reporting/index.html). |
| [HtsFile](https://phenopackets-schema.readthedocs.io/en/latest/file.html)                        | Corresponds to the [Hts File](StructureDefinition-HtsFile.html) profile.                                      |
| [Individual](https://phenopackets-schema.readthedocs.io/en/latest/individual.html)               | Corresponds to the [Individual](StructureDefinition-Individual.html) profile.                                 |
| [Karyotypic sex](https://phenopackets-schema.readthedocs.io/en/latest/karyotypicsex.html)        | Corresponds to the [individual karyotypic sex](StructureDefinition-individual-karyotypic-sex.html) extension. |
| [Metadata](https://phenopackets-schema.readthedocs.io/en/latest/metadata.html)                   | Not needed because FHIR already has its own metadata infrastructure.                                          |
| [OntologyClass](https://phenopackets-schema.readthedocs.io/en/latest/ontologyclass.html)         | Not needed because FHIR already has comprehensive support for terminologies.                                  |
| [Pedigree](https://phenopackets-schema.readthedocs.io/en/latest/pedigree.html)                   | Corresponds to the [Pedigree Node](StructureDefinition-PedigreeNode.html) profile.                            |
| [PhenotypicFeature](https://phenopackets-schema.readthedocs.io/en/latest/phenotype.html)         | Corresponds to the [Phenotypic Feature](StructureDefinition-PhenotypicFeature.html) profile.                  |
| [Procedure](https://phenopackets-schema.readthedocs.io/en/latest/procedure.html)                 | Corresponds to [Specimen.collection](https://www.hl7.org/fhir/specimen-definitions.html#Specimen.collection). |
| [Resource](https://phenopackets-schema.readthedocs.io/en/latest/resource.html)                   | Not needed because FHIR already has comprehensive support for terminologies.                                  |
| [Sex](https://phenopackets-schema.readthedocs.io/en/latest/sex.html)                             | Not needed because FHIR already has the _gender_ attribute in the Patient resource.                           |
| [Variant](https://phenopackets-schema.readthedocs.io/en/latest/variant.html)                     | Corresponds to [Variant](http://build.fhir.org/ig/HL7/genomics-reporting/variant.html) in the [FHIR Genomics Reporting Implementation Guide](http://build.fhir.org/ig/HL7/genomics-reporting/index.html). |

#### Top-level Elements

| Phenopackets element                                                                       | Comment                                                                               |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------- |
| [Phenopacket](https://phenopackets-schema.readthedocs.io/en/latest/phenopacket.html)       | Corresponds to the [Phenopackets](StructureDefinition-Phenopacket.html) profile.      |
| [Family](https://phenopackets-schema.readthedocs.io/en/latest/family.html)                 | Corresponds to the [Family](StructureDefinition-Family) profile.                      |
| [Cohort](https://phenopackets-schema.readthedocs.io/en/latest/cohort.html)                 | Corresponds to the [Cohort](StructureDefinition-Cohort) profile.                      |
| [Interpretation](https://phenopackets-schema.readthedocs.io/en/latest/interpretation.html) | Corresponds to the [GenomicsReport](StructureDefinition-GenomicsReport.html) profile. |

#### <a name="notes"></a>Notes

Phenopackets does not include the notion of an _encounter_, which makes it hard to store longitudinal information. This implementation guide uses the [Encounter-Phenopackets](StructureDefinition-Encounter-Phenopackets.html) profile to represent encounters.

In Phenopackets, a Biosample is meant to be "a unit of biological material from which the substrate molecules (e.g. genomic DNA, RNA, proteins) for molecular analyses (e.g. sequencing, array hybridisation, mass-spectrometry) are extracted." However, the model includes additional information that goes beyond this definition, including cancer-related attributes.

In this IG, [mCODE](http://standardhealthrecord.org/guides/mcode/) is used as the basis to model cancer-related resources. The profiles cannot be used directly because mCODE depends on USCore and the scope of this IG is international. However, the cancer-related profiles developed in this IG are closely aligned to the corresponding profiles in mCODE.

The following are the cancer-related profiles that were developed:

* [Primary cancer condition](StructureDefinition-PrimaryCancerCondition.html)
* [Secondary cancer condition](StructureDefinition-SecondaryCancerCondition.html)
* [TNM clinical stage group](StructureDefinition-TNMClinicalStageGroup.html)
* [TNM clinical primary tumor category](StructureDefinition-TNMClinicalPrimaryTumorCategory.html)
* [TNM clinical regional nodes category](StructureDefinition-TNMClinicalRegionalNodesCategory.html)
* [TNM clinical distant metastases category](StructureDefinition-TNMClinicalDistantMetastasesCategory.html)
* [TNM pathologic stage group](StructureDefinition-TNMPathologicStageGroup.html)
* [TNM pathologic primary tumor category](StructureDefinition-TNMPathologicPrimaryTumorCategory.html)
* [TNM pathologic regional nodes category](StructureDefinition-TNMPathologicRegionalNodesCategory.html)
* [TNM pathologic distant metastases category](StructureDefinition-TNMPathologicDistantMetastasesCategory.html)

