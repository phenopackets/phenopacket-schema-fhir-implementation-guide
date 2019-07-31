Represents a tumor by profiling the [BodyStructure](http://hl7.org/fhir/bodystructure.html) resource. 

#### Mapping Notes

The original Phenopackets specification does not provide a mechanism to represent a tumour, which limits he ability to track tumour progression in complex cases. This profile was designed to provide this capability and roughly corresponds to the [_tumor progression_ attribute](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html#tumor-progression) in the [Biosample element](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html) (the scope of _tumor progression_ is a bit narrower).

The _morphology_ binding is modified to prefer a value set that includes the descendants of the _Neoplasm_ concept in SNOMED CT and NCIt.

The Condition resource in FHIR has the property _bodySite_ to represet the anatomical location. However, this is a CodeableConcept and there is no way of referencing a BodySite resource. Therefore, an [extension](StructureDefinition-tumor-related-condition.html) was created to link a BodyStructure representing a tumor to a Condition representing a cancer.

#### Extensions

None required.