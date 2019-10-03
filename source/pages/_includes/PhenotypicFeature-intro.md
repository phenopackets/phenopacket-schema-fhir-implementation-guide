#### Mapping Notes

This element is represented in FHIR as a profile of an [Observation](https://www.hl7.org/fhir/observation.html). 

| Phenopackets  | FHIR                                                                      | Comments                                                                                                                   |
| ------------- | ------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| description   | Observation.note                                                          |                                                                                                                            |
| type          | Observation.code                                                          | These codes are bound to clinical findings in SNOMED CT and phenotypic abnormalities in HPO.                               |
| negated       | Observation.interpretation                                                | This element is mandatory and its values are restricted to _Positive_ and _Negative_.                                      |
| severity      | [Extension](StructureDefinition-phenotypic-feature-severity.html)         | Bound to the [phenotypic feature severity value set](ValueSet-phenotypic-feature-severity.html) with strength of required. |
| modifier      | [Extension](StructureDefinition-phenotypic-feature-modifier.html)         | Bound to the [phenotypic feature modifier value set](ValueSet-phenotypic-feature-modifier.html) with strength of required. |
| onset         | [Extension](StructureDefinition-phenotypic-feature-onset.html)            | The coded alternative is bound to the [onset value set](ValueSet-onset.html) with strength of required.                    |
| evidence      | [Extension](StructureDefinition-evidence.html)                            | Bound to the [evidence value set](ValueSet-evidence.html) with strength of required.                                       | 
