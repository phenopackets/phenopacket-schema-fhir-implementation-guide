Phenopackets can be used to hold phenotypic information that can inform the analysis of sequencing data in VCF format as well as other high-throughput sequencing (HTS) or other data types. The Phenopacket provides two messages that allow phenopackets to link files with data.

#### Mapping Notes

The closest resource in FHIR to an HtsFile is a [DocumentReference](https://www.hl7.org/fhir/documentreference.html).

##### HTS Format

The _hts format_ attribute maps the the _type_ attribute in the DocumentReference resource. The values are bound to the [HTS format value set](CodeSystem-hts-format.html).

##### Individual to Sample Identifiers

The sample ids in the HTS files can be referenced by adding an identifier to the [Specimen](https://www.hl7.org/fhir/specimen.html) resource. This attribute will be excluded from the current implementation.

TODO: need to look at this in more detail when building the examples.

##### URI

The _uri_ attribute maps to [DocumentReference.content.attachment.url](https://www.hl7.org/fhir/datatypes-definitions.html#Attachment.url).

##### Description

The _description_ attribute maps to [DocumentReference.content.attachment.title](https://www.hl7.org/fhir/datatypes-definitions.html#Attachment.title).

#### Extensions

An extension to represent the [genome assembly](StructureDefinition-htsfile-genome-assembly.html) was required. 