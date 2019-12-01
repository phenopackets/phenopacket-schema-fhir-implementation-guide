#### Mapping Notes

This element is represented in FHIR as a profile of a [Group](https://www.hl7.org/fhir/group.html). 

| Phenopackets  | FHIR                                                                      | Comments                                                                                                                   |
| ------------- | ------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| id            | Group.identifier                                                          |                                                                                                                            |
| proband       | Group.member                                                              | The proband is represented as a member with family-member-type = proband.                                                  |
| relatives     | Group.member                                                              | The relatives are represented as members with family-member-type = relative.                                               |
| pedigree      | [Extension](StructureDefinition-pedigree-node.html)                       |                                                                                                                            |
| hts\_files    | [Extension](StructureDefinition-htsfiles.html)                            |                                                                                                                            |
| meta\_data    | NA                                                                        | Not needed because FHIR already has its own metadata infrastructure.                                                       |
 
