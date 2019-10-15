This profile represents the test results of an Individual.

#### Mapping Notes

The [DiagnosticReport)[http://hl7.org/fhir/diagnosticreport.html] resource includes two mandatory attributes: _status_ and _code_. The value of _status_ has been fixed in the profile to _final_ but this could be changed if the specification is meant to represent preliminary or partial results. The value of _code_ has not been constrained but it could be bound to a more meaningful value set for this context.

#### Extensions

An [extension](https://build.fhir.org/ig/HL7/genomics-reporting/obs-variant.html) was required to represent variants.