This profile represents an encounter with an individual where phenotypic features are observed or biosamples are collected.

#### Mapping Notes

The concept of "encounter" does not exist in Phenopackets. The _age_ attribute represents the age of the individual at the time of collection of biospecimens or phenotypic observations, but if multiple Phenopackets are generated over time and new phenotypic features are recorded, this model doesn't work because it will only store the age of the last group of features that was reported, i.e., the age when the old phenotypic features were recorded would be overwritten and lost.

#### Extensions

An extension was required for the [age](StructureDefinition-individual-age.html) attribute.