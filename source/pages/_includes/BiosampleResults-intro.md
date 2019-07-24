This profile represents the results in a [Biosample](https://phenopackets-schema.readthedocs.io/en/latest/biosample.html).

#### Mapping Notes

The [DiagnosticReport)[http://hl7.org/fhir/diagnosticreport.html] resource includes two mandatory attributes: _status_ and _code_. The value of _status_ has been fixed in the profile to _final_ but this could be changed if the specification is meant to represent preliminary or partial results. The value of _code_ has not been constrained but it could be bound to a more meaningful value set for this context.

#### Extensions

An extensions was required to represent [variants](http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/obs-variant).