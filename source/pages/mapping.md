---
title: Mapping
layout: default
active: mapping
---

This page describes the mapping between the original Phenopackets and this FHIR implementation guide.

| Phenopackets element        | Comment |
| --------------------------- | --------|
| [Age](https://phenopackets-schema.readthedocs.io/en/latest/age.html) | Not needed because FHIR has its own [age](https://www.hl7.org/fhir/datatypes.html#Age) data type.|
| [AgeRange](https://phenopackets-schema.readthedocs.io/en/latest/age.html#agerange) | Not needed because FHIR has its own [range](https://www.hl7.org/fhir/datatypes.html#Range) data type.|
| [Disease](https://phenopackets-schema.readthedocs.io/en/latest/disease.html) | Corresponds to the [Disease profile](StructureDefinition-Disease.html). |
| [Evidence](https://phenopackets-schema.readthedocs.io/en/latest/evidence.html) | |
