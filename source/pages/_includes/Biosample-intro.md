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
| histological\_diagnosis         | NA                                                                           | A histological diagnosis is represented using the [Disease](StructureDefinition-Disease.html) profile and is linked to the specimen through a [GenomicsReport](StructureDefinition-GenomicsReport.html) profile via the Condition.evidence attribute. |
| tumor\_progression              | NA                                                                           | This is represented in Condition.clinicalStatus. This IG uses profiles on Condition to represent primary and secondary cancers, aligning to mCODE. |
| tumor\_grade                    | NA                                                                           | This is represented through the TNM\* profiles in mCODE (see [here](http://standardhealthrecord.org/guides/mcode/profiles.html)). These profiles are not imported directly but corresponding profiles are available as part of this IG. |  
| diagnostic\_markers             | NA                                                                           | This is a result reported as part of a [GenomicsReport](StructureDefinition-GenomicsReport.html) or [DiagnosticReport](https://www.hl7.org/fhir/diagnosticreport.html). |
| procedure                       | Specimen.collection.method and Specimen.collection.bodySite                  | The Phenopackets procedure element maps to the internal [collection](https://www.hl7.org/fhir/specimen-definitions.html#Specimen.collection) element in the [Specimen](https://www.hl7.org/fhir/specimen.html) resource. |
| hts\_files                      | NA                                                                           | This attribute is an extension on [GenomicsReport](StructureDefinition-GenomicsReport.html).       |
| variants                        | NA                                                                           | This attribute coresponds to one of the [result slices](http://build.fhir.org/ig/HL7/genomics-reporting/genomics-report-definitions.html#DiagnosticReport.result:variant) of a [GenomicsReport](StructureDefinition-GenomicsReport.html).               |
| is\_control\_sample             |[Extension](StructureDefinition-biosample-control.html)                       |                                                                                                    |

The attributes in the Phenopackets [biosample building block](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html) that are not represented in this profile are available in the following profiles:

* [Disease](StructureDefinition-Disease.html)
* [GenomicsReport](StructureDefinition-GenomicsReport.html)
* TODO: add links to TNM\* profiles when ready

