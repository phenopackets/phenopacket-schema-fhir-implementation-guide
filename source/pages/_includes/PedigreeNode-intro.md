#### Mapping Notes

This element is represented in FHIR as a profile of [FamilyMemberHistory-Genetic](http://hl7.org/fhir/R4/familymemberhistory-genetic.html).

| Phenopackets     | FHIR                                                                      | Comments                                                                                                                   |
| ---------------- | ------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| family_id        | [Extension](StructureDefinition-pedigree-node-family-identifier.html)     |                                                                                                                            |
| individual\_id   | [Extension](StructureDefinition-pedigree-node-individual.html)            | The *individual\_id* field in Phenopackets is meant to link the PED row to an individual.                                  |
| paternal\_id     | FamilyMemberHistory-Genetic.family-member-history-genetics-parent         |                                                                                                                            |
| maternal\_id     | FamilyMemberHistory-Genetic.family-member-history-genetics-parent         |                                                                                                                            |
| sex              | FamilyMemberHistory.sex                                                   |                                                                                                                            |
| affected\_status | [Extension](StructureDefinition-pedigree-node-affected-status.html)       | Bound to the [affected status value set](ValueSet-pedigree-affected-status.html) with strength of required.                |


Phenopackets represents pedigrees using a very simple model based on the PED format. In this IG the family member history genetic profile is used as the basis to represent pedigree and extensions are used to add extra fields required to produce a PED file.

