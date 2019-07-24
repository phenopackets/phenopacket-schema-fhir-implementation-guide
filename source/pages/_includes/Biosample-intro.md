This profile represents a [Biosample](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html) in the original Phenopackets implementation. It is meant to capture information about a unit of biological material used for molecular analyses along with additional patient information.

#### Mapping Notes

The main FHIR resource that corresponds to a Biosample is Sample, a profile on the Specimen resource. The additional patient information can be captured using the Observation, DiagnosticReport and BodyStructure resources, wrapped in a Composition resource. The following sections describe the mappings for each field in detail.

##### [id](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#id)

All resources in FHIR have logical and business identifiers. This id corresponds to the logical identifier of the main Composition.

##### [dataset_id](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#dataset-id)

This element maps to the _accessionIdentifier_ atribute of the [Sample](StructureDefinition-Sample.html) profile.

##### [individual_id](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#string-individual-id)

Both the parent Composition resource and the Sample profile have a _subject_ attribute that can reference an Individual.

##### [description](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#description)

This element maps to _Sample.annotation_.

##### [sampled_tissue](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#sampled-tissue)

This element maps to the _type_ attribute of the [Sample](StructureDefinition-Sample.html) profile.

##### [phenotypic_features](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#phenotypic-features)

The phenotypic characteristics of the Biosample will be represented using Observations. Observations can be linked to a Specimen using the _specimen_ attribute.

##### [taxonomy](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#taxonomy)

This attribute is unnecessary because it is already part of Individual.

##### [individual_age_at_collection](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#individual-age-at-collection)

This attribute is represented by the [sample-individual-age-at-collection](StructureDefinition-sample-individual-age-at-collection.html) extension in the [Sample](StructureDefinition-Sample.html) profile.

##### [histological_diagnosis](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#histological-diagnosis)

TODO

##### [tumor_progression](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#tumor-progression)

One of the limitations of the current Phenopackets specification is that it does not allow representing tumours as first class entities. This complicates tracking tumours at different points in time. In the FHIR implementation, a tumour associated with the Biosample is represented using a profile on a BodyStructure resource. The _tumor progession_ attribute maps to the _morphology_ attribute in this FHIR resouce. The values of the _morphology_ attribute are constrained to a value set that repesents tumour progression.

##### [tumor_grade](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#tumor-grade)

##### [tumor_stage](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#tumor-stage)

##### [diagnostic_markers](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#diagnostic-markers)

##### [procedure](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#procedure)

##### [hts_files](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#hts-files)

##### [variants](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#variants)

##### [is_control_sample](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#is-control-sample)
