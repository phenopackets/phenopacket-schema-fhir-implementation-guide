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
| [Disease](https://phenopackets-schema.readthedocs.io/en/latest/disease.html) | Corresponds to the [Disease profile](StructureDefinition-Disease.html). |
| [Evidence](https://phenopackets-schema.readthedocs.io/en/latest/evidence.html) | Corresponds to the [evidence extension](StructureDefinition-evidence.html). |
| [External Reference](https://phenopackets-schema.readthedocs.io/en/latest/externalreference.html) | Corresponds to the [external reference extension](StructureDefinition-external-reference.html). |
| [File and HtsFile](https://phenopackets-schema.readthedocs.io/en/latest/file.html)| Corresponds to the [Hts File profile](StructureDefinition-HtsFile.html). |
| [Gene](https://phenopackets-schema.readthedocs.io/en/latest/gene.html)| TODO |
| [Individual](https://phenopackets-schema.readthedocs.io/en/latest/individual.html)| Corresponds to the [Individual profile](StructureDefinition-Individual.html). |
| [Karyotypic sex](https://phenopackets-schema.readthedocs.io/en/latest/karyotypicsex.html)| Corresponds to the [individual karyotypic sex extension](StructureDefinition-individual-karyotypic-sex.html). |
| [Metadata](https://phenopackets-schema.readthedocs.io/en/latest/metadata.html)| Not needed because FHIR already has its own metadata infrastructure. |
| [Ontology Class](https://phenopackets-schema.readthedocs.io/en/latest/ontologyclass.html)| Not needed because FHIR already has comprehensive support for terminologies. |
| [Pedigree](https://phenopackets-schema.readthedocs.io/en/latest/pedigree.html) | |
| [PhenotypicFeature](https://phenopackets-schema.readthedocs.io/en/latest/phenotype.html) | |
| [Procedure](https://phenopackets-schema.readthedocs.io/en/latest/procedure.html) | |
| [Resource](https://phenopackets-schema.readthedocs.io/en/latest/resource.html) | Not needed because FHIR already has comprehensive support for terminologies. |
| [Sex](https://phenopackets-schema.readthedocs.io/en/latest/sex.html) | Not needed because FHIR already has the _gender_ attribute in the Patient resource.|
| [Variant](https://phenopackets-schema.readthedocs.io/en/latest/variant.html) | |

#### Top-level Elements

| Phenopackets element        | Comment |
| --------------------------- | --------|
| [Phenopacket](https://phenopackets-schema.readthedocs.io/en/latest/phenopacket.html) | |
| [Family](https://phenopackets-schema.readthedocs.io/en/latest/family.html) | |
| [Cohort](https://phenopackets-schema.readthedocs.io/en/latest/cohort.html) | |
| [Biosample](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html) | |
| [Interpretation](https://phenopackets-schema.readthedocs.io/en/latest/interpretation.html) | |

