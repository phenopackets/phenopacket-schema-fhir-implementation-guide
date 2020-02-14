This element encodes information about an external reference.

#### Mapping Notes

This element is modelled as a complex extension. In the original Phenopackets specification the _id_ attribute is a string and the documentation states that in many contexts it is a CURIE that uniquely identifies the evidence source, e.g., ISBN:978-3-16-148410-0 or PMID:123456. The syntax is meant to be application specific but in the FHIR implementation this is narrowed down to a _url_ type. We believe this is a reasonable requirement for an external reference.
