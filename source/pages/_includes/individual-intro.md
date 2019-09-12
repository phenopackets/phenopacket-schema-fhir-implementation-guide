The subject of the Phenopacket is represented by an Individual element. This element intends to represent an individual human or other organism.

#### Mapping Notes

This element is mapped to the [Patient](https://www.hl7.org/fhir/patient.html) resource in FHIR. The _alternate ids_ attribute can be mapped to the standard identifiers in FHIR which already support multiple values. The _date of birth_ attribute maps to _Patient.birthDate_. The _sex_ attribute maps to _Patient.gender_.

#### Extensions

Extensions were required for the [age](StructureDefinition-individual-age.html), [karyotypic sex](StructureDefinition-individual-karyotypic-sex.html) and [taxnonomy](StructureDefinition-individual-taxonomy.html) attributes. 
