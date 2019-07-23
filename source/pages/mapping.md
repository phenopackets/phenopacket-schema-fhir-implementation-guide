---
title: Mapping
layout: default
active: mapping
---

This page describes the mapping between the original Phenopackets and this FHIR implementation guide. The general approach followed was to constrain the FHIR elements to closely match the corresponding Phenopacket elements. This, combined with a profile-aware API generator, can be used to create an API that is simple to use and compliant with the profile. The main drawback is that existing FHIR data that wants to be converted into FHIR Phenopackets will need to be modified so that the values in any constrained fields are removed.

#### Building Blocks

| Phenopackets element        | Comment |
| --------------------------- | --------|
| [Age](https://phenopackets-schema.readthedocs.io/en/latest/age.html) | Not needed because FHIR has its own [age](https://www.hl7.org/fhir/datatypes.html#Age) data type.|
| [AgeRange](https://phenopackets-schema.readthedocs.io/en/latest/age.html#agerange) | Not needed because FHIR has its own [range](https://www.hl7.org/fhir/datatypes.html#Range) data type.|
| [Disease](https://phenopackets-schema.readthedocs.io/en/latest/disease.html) | Corresponds to the [Disease](StructureDefinition-Disease.html) profile. |
| [Evidence](https://phenopackets-schema.readthedocs.io/en/latest/evidence.html) | Corresponds to the [evidence](StructureDefinition-evidence.html) extension. |
| [External Reference](https://phenopackets-schema.readthedocs.io/en/latest/externalreference.html) | Corresponds to the [external reference](StructureDefinition-external-reference.html) extension. |
| [File and HtsFile](https://phenopackets-schema.readthedocs.io/en/latest/file.html)| Corresponds to the [Hts File](StructureDefinition-HtsFile.html) profile. |
| [Gene](https://phenopackets-schema.readthedocs.io/en/latest/gene.html)| Maps to [ObsRegionStudied](http://build.fhir.org/ig/HL7/genomics-reporting/obs-region-studied.html) in the [FHIR Genomics Reporting Implementation Guide](http://build.fhir.org/ig/HL7/genomics-reporting/index.html). |
| [Individual](https://phenopackets-schema.readthedocs.io/en/latest/individual.html)| Corresponds to the [Individual](StructureDefinition-Individual.html) profile. |
| [Karyotypic sex](https://phenopackets-schema.readthedocs.io/en/latest/karyotypicsex.html)| Corresponds to the [individual karyotypic sex](StructureDefinition-individual-karyotypic-sex.html) extension. |
| [Metadata](https://phenopackets-schema.readthedocs.io/en/latest/metadata.html)| Not needed because FHIR already has its own metadata infrastructure. |
| [Ontology Class](https://phenopackets-schema.readthedocs.io/en/latest/ontologyclass.html)| Not needed because FHIR already has comprehensive support for terminologies. |
| [Pedigree](https://phenopackets-schema.readthedocs.io/en/latest/pedigree.html) | Corresponds to the [Pedigree Node](StructureDefinition-PedigreeNode.html) profile. |
| [PhenotypicFeature](https://phenopackets-schema.readthedocs.io/en/latest/phenotype.html) | Corresponds to the [Phenotypic Feature](StructureDefinition-PhenotypicFeature.html) profile. |
| [Procedure](https://phenopackets-schema.readthedocs.io/en/latest/procedure.html) | Not needed because the FHIR [Specimen](http://hl7.org/fhir/specimen.html) resource, used as the base for the [Sample](StructureDefinition-Sample.html) profile, already has the attributes _collection.method_ and _collection.bodySite_ that correspond to the _code_ and _body site_ attributes in Procedure. |
| [Resource](https://phenopackets-schema.readthedocs.io/en/latest/resource.html) | Not needed because FHIR already has comprehensive support for terminologies. |
| [Sex](https://phenopackets-schema.readthedocs.io/en/latest/sex.html) | Not needed because FHIR already has the _gender_ attribute in the Patient resource.|
| [Variant](https://phenopackets-schema.readthedocs.io/en/latest/variant.html) | Maps to [ObsVariant](http://build.fhir.org/ig/HL7/genomics-reporting/obs-variant.html) in the [FHIR Genomics Reporting Implementation Guide](http://build.fhir.org/ig/HL7/genomics-reporting/index.html). |

#### Top-level Elements

| Phenopackets element        | Comment |
| --------------------------- | --------|
| [Phenopacket](https://phenopackets-schema.readthedocs.io/en/latest/phenopacket.html) | |
| [Family](https://phenopackets-schema.readthedocs.io/en/latest/family.html) | |
| [Cohort](https://phenopackets-schema.readthedocs.io/en/latest/cohort.html) | |
| [Biosample](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html) | |
| [Interpretation](https://phenopackets-schema.readthedocs.io/en/latest/interpretation.html) | |

