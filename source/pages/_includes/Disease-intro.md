#### Mapping Notes

This element is represented in FHIR as a profile of [Condition](https://www.hl7.org/fhir/condition.html). 

| Phenopackets     | FHIR                                                                      | Comments                                                                                                                   |
| ---------------- | ------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| term             | Condition.code                                                            |                                                                                                                            |
| onset            | Condition.onset and an [extension](StructureDefinition-disease-onset.html)| FHIR provides different ways of capturing onset, but these do not include a Coding or CodeableConcept, which are provided in the original Phenopackets specification. |
| tumor_stage      | NA                                                                        | This IG defines a different profile to represent cancer, which includes the *tumor\_ stage* attribute.                     |
