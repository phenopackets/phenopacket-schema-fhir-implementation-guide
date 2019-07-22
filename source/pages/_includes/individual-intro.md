The subject of the Phenopacket is represented by an Individual element. This element intends to represent an individual human or other organism.

#### Mapping Notes

This element is mapped to the [Patient](https://www.hl7.org/fhir/patient.html) resource in FHIR. No specific field was defined for the dataset_id because this can be represented with the _identifiers_ property that is already available in FHIR.

#### Extensions

Extensions were required for the [age](StructureDefinition-individual-age.html), [karyotypic sex](StructureDefinition-individual-karyotypic-sex.html) and [taxnonomy](StructureDefinition-individual-taxonomy.html) attributes. 
