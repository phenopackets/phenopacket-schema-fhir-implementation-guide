This profile represents a subset of the attributes found in the original Phenopackets [Biosample](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html) object. For more details see the [Biosample page](StructureDefinition-Biosample.html) in this guide.

#### Mapping Notes

The attribute _status_ is not available in the original Phenopackets specification and therefore we assume any specimen represented using Phenopackets would be available. In this profile the attribute is always set to _available_ but it could also be removed or kept open to allow representing specimens that are not available. 

Several attributes in the Specimen FHIR resource map to the attributes of a Phenopackets Biosample. The _type_ attribute maps to the _sampled tissue_ attribute. Also, the attributes _collection.method_ and _collection.bodySite_ correspond to the _code_ and _body site_ attributes in the Phenopackets Procedure element, which is part of the Biosample element. Finally, the _note_ attribute maps to the _description_ attribute in the Biosample element.

#### Extensions

The [specimen-individual-age-at-collection](StructureDefinition-specimen-individual-age-at-collection.html) extension is used to enable capturing the age of the individual at the time the specimen was collected.