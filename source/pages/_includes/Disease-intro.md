The word phenotype is used with many different meanings, including “the observable traits of an organism”. In medicine, the word can be used with at least two different meanings. It is used to refer to some observed deviation from normal morphology, physiology, or behavior. In contrast, the disease is a diagnosis, i.e., and inference or hypothesis about the cause underlying the observed phenotypic abnormalities. Occasionally, physicians use the word phenotype to refer to a disease, but we do not use this meaning here.

#### Mapping Notes

The Disease element in Phenopackets is very simple. The only attribute that is not available in the base FHIR Condition resource is a coded onset. Note that this implementation guide defines a different profile to represent cancer, which includes the _tumor stage_ attribute. Therefore, this attribute is not part of the base Disease profile.

#### Extensions

FHIR provides different ways of capturing onset, but these do not include a Coding or CodeableConcept, which are provided in the original Phenopackets specification. The [disease-onset](StructureDefinition-disease-onset.html) extension is used to enable capturing an onset using a Coding. The onset codes are bound to the [onset value set](ValueSet-onset.html).