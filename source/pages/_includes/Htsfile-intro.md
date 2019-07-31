Phenopackets can be used to hold phenotypic information that can inform the analysis of sequencing data in VCF format as well as other high-throughput sequencing (HTS) or other data types. The Phenopacket provides two messages that allow phenopackets to link files with data.

#### Mapping Notes

The closest resource in FHIR to an HtsFile is a [DocumentReference](https://www.hl7.org/fhir/documentreference.html). The orginal Phenopackets specification creates one message for File and a separate one for HtsFile, which uses the FHIR message. However, the File message is never used on its own. Because of this and because a different type of file can be represented in FHIR using the Docuemnt reference resource, we only create a profile for HtsFile.

#### Extensions

Two extensions, [genome assembly](StructureDefinition-htsfile-genome-assembly.html) and [individual to specimen identifiers map](StructureDefinition-htsfile-individual-to-specimen-identifiers.html), were required. 