#### Mapping Notes

This element is represented in FHIR as a profile of [Patient](https://www.hl7.org/fhir/patient.html). 

| Phenopackets    | FHIR                                                                      | Comments                                                                                       |
| --------------- | ------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| id              | Patient.identifier                                                        |                                                                                                |
| alternate_ids   | Patient.identifier                                                        | FHIR supports having multiple identifiers and specifying their type.                           |
| date\_of\_birth | Patient.birthDate                                                         |                                                                                                |
| age             | [Extension](StructureDefinition-individual-age.html)                      |                                                                                                |
| sex             | Patient.gender                                                            |                                                                                                |
| karyotypic_sex  | [Extension](StructureDefinition-individual-karyotypic-sex.html)           | Bound to the [karyotypic sex valueset](ValueSet-karyotypic-sex.html) with strength of required.|
| taxonomy        | [Extension](StructureDefinition-individual-taxonomy.html)                 | Bound to the [taxonomy valueset](ValueSet-taxonomy.html) with strength of required.            |

