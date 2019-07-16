---
title: StructureDefinition-Biosample-intro
layout: default
active: StructureDefinition-Biosample-intro
---

This profile represents a [Biosample](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html) in the original Phenopackets implementation. It is meant to capture information about a unit of biological material used for molecular analyses along with additional patient information.

## FHIR Implementation

The main FHIR resource that corresponds to a Biosample is Specimen. The additional patient information can be captured using the Observation, DiagnosticReport and BodyStructure resources, wrapped in a Composition resource. The following sections describe the mappings for each field in detail.

### [id](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#id)

### [dataset_id](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#dataset-id)

### [individual_id](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#string-individual-id)

### [description](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#description)

### [sampled_tissue](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#sampled-tissue)

### [phenotypic_features](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#phenotypic-features)

### [taxonomy](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#taxonomy)

### [individual_age_at_collection](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#individual-age-at-collection)

### [histological_diagnosis](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#histological-diagnosis)

### [tumor_progression](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#tumor-progression)

### [tumor_grade](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#tumor-grade)

### [tumor_stage](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#tumor-stage)

### [diagnostic_markers](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#diagnostic-markers)

### [procedure](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#procedure)

### [hts_files](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#hts-files)

### [variants](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#variants)

### [is_control_sample](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#is-control-sample)


