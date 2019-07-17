---
title: StructureDefinition-Biosample-intro
layout: default
active: StructureDefinition-Biosample-intro
---

This profile represents a [Biosample](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html) in the original Phenopackets implementation. It is meant to capture information about a unit of biological material used for molecular analyses along with additional patient information.

## FHIR Implementation

The main FHIR resource that corresponds to a Biosample is Sample, a profile on the Specimen resource. The additional patient information can be captured using the Observation, DiagnosticReport and BodyStructure resources, wrapped in a Composition resource. The following sections describe the mappings for each field in detail.

### [id](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#id)

All resources in FHIR have logical and business identifiers. This appears to correspond to a logical identifier and therefore will map to the id attribute of the main Composition.

### [dataset_id](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#dataset-id)

This element maps to the __accessionIdentifier__ atribute of the Specimen resource.

### [individual_id](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#string-individual-id)

Both the parent Composition resource and the Specimen resource have a __subject__ attribute that can reference an Individual.

### [description](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#description)

TODO

### [sampled_tissue](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#sampled-tissue)

This element maps to the __type__ attribute of the Specimen resource.

### [phenotypic_features](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#phenotypic-features)

The phenotypic characteristics of the Biosample will be represented using Observations. Observations can be linked to a Specimen using the __specimen__ attribute.

### [taxonomy](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#taxonomy)

TODO

### [individual_age_at_collection](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#individual-age-at-collection)

TODO

### [histological_diagnosis](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#histological-diagnosis)

TODO

### [tumor_progression](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#tumor-progression)

One of the limitations of the current Phenopackets specification is that it does not allow representing tumours as first class entities. This complicates tracking tumours at different points in time. In the FHIR implementation, a tumour associated with the Biosample is represented using a profile on a BodyStructure resource. The __tumor_progession__ attribute maps to the __morphology__ attribute in this FHIR resouce. The values of the __morphology__ attribute are constrained to a value set that repesents tumour progression.

### [tumor_grade](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#tumor-grade)

### [tumor_stage](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#tumor-stage)

### [diagnostic_markers](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#diagnostic-markers)

### [procedure](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#procedure)

### [hts_files](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#hts-files)

### [variants](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#variants)

### [is_control_sample](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#is-control-sample)


