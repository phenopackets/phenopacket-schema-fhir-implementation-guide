This element is represented in FHIR as a profile of [DocumentReference](https://www.hl7.org/fhir/documentreference.html). 

| Phenopackets     | FHIR                                                                                                               | Comments                                                                          |
| ---------------- | ------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------- |
| uri              | [DocumentReference.content.attachment.url](https://www.hl7.org/fhir/datatypes-definitions.html#Attachment.url)     |                                                                                   |
| description      | [DocumentReference.content.attachment.title](https://www.hl7.org/fhir/datatypes-definitions.html#Attachment.title) |                                                                                   |
| hts\_format      | DocumentReference.type                                                                                             | The values are bound to the [HTS format value set](CodeSystem-hts-format.html).   |
| genome\_assembly | [Extension](StructureDefinition-htsfile-genome-assembly.html)                                                      |                                                                                   |
| individual\_to\_sample\_identifiers | NA                                                                                              | The sample ids in the HTS files can be referenced by adding an identifier to the [Specimen](https://www.hl7.org/fhir/specimen.html) resource. Therefore, this attribute will be excluded from this profile. TODO: look at this in more detail when building the examples. |

