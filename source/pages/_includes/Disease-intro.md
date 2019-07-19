The word phenotype is used with many different meanings, including “the observable traits of an organism”. In medicine, the word can be used with at least two different meanings. It is used to refer to some observed deviation from normal morphology, physiology, or behavior. In contrast, the disease is a diagnosis, i.e., and inference or hypothesis about the cause underlying the observed phenotypic abnormalities. Occasionally, physicians use the word phenotype to refer to a disease, but we do not use this meaning here.

#### Mapping Notes

The Disease element in Phenopackets is very simple. The Disease FHIR profile constrains several attributes to match the attributes in Phenopackets. Future versions should consider including some of these attributes, such as _clinical status_ and _abatement_, which can be useful when dealing with longitudinal records.

#### Extensions

FHIR provides different ways of capturing onset, but these do not include a Coding or CodeableConcept, which are provided in the original Phenopackets specification. The [disease-onset](StructureDefinition-disease-onset.html) extension is used to enable capturing an onset using a Coding.