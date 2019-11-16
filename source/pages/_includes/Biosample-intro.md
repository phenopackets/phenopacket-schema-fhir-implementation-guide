#### Mapping Notes

This element is represented in FHIR as a profile of [Specimen](https://www.hl7.org/fhir/specimen.html).

| Phenopackets                    | FHIR                                                                         | Comments                                                                                          |
| ------------------------------- | ---------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| id                              | Specimen.identifier                                                          |                                                                                                   |
| individual\_id                  | Specimen.subject                                                             |                                                                                                   |
| description                     | Specimen.note                                                                |                                                                                                   |
| sampled\_tissue                 | Specimen.type                                                                |                                                                                                   |
| phenotypic\_features            | NA                                                                           | In FHIR, phenotypic features are linked to biosamples through the Observation.specimen attribute. |
| taxonomy                        | NA                                                                           | Individuals already contain a taxonomy attribute so this attribute is not needed.                 |
| individual\_age\_at\_collection | [Extension](StructureDefinition-biosample-individual-age-at-collection.html) |                                                                                                   |
| histological\_diagnosis         | [Extension](StructureDefinition-biosample-histological-diagnosis.html)       |                                                                                                   |
| tumor\_progression              | [Extension](StructureDefinition-biosample-tumor-progression.html)            |                                                                                                   |
| tumor\_grade                    | [Extension](StructureDefinition-biosample-tumor-grade.html)                  |                                                                                                   |  
| diagnostic\_markers             | [Extension](StructureDefinition-biosample-diagnostic-markers.html)           |                                                                                                   |
| procedure                       | Specimen.collection.method and Specimen.collection.bodySite                  | The Phenopackets procedure element maps to the internal [collection](https://www.hl7.org/fhir/specimen-definitions.html#Specimen.collection) element in the [Specimen](https://www.hl7.org/fhir/specimen.html) resource. |
| hts\_files                      | [Extension](StructureDefinition-htsfiles.html)                               |                                                                                                   |
| variants                        | [Extension](StructureDefinition-variants.html)                               |                                                                                                   |
| is\_control\_sample             | [Extension](StructureDefinition-biosample-control.html)                      |                                                                                                   |

