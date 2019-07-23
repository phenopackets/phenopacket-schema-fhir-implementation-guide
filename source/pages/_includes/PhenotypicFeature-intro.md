This element is intended to be used to describe a phenotype that characterizes the subject of the Phenopacket. For medical use cases the subject will generally be a patient or a proband of a study, and the phenotypes will be abnormalities described by an ontology such as the Human Phenotype Ontology. The word phenotype is used with many different meanings including disease entity, but in this context we mean an individual phenotypic feature, observed as either present or absent (negated), with possible onset, modifiers and frequency.

#### Mapping Notes

This element is represented in FHIR as a profile of an [Observation](https://www.hl7.org/fhir/observation.html). The _type_ attribute maps to Observation.code. The _negated_ attribute is represented using the value of the observation, which is made mandatory and contrained to be _present_ or _absent_. 

#### Extensions

Extensions were required for the [severity](StructureDefinition-phenotypic-feature-severity.html), [modifier](StructureDefinition-phenotypic-feature-modifier.html) and [onset](StructureDefinition-phenotypic-feature-onset.html) attributes. 

