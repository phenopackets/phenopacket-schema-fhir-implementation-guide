The Phenopackets Pedigree element represents a PED file (“pedigree file”), which describes the family relationships of each sample along with their gender and phenotype. PED files are typically used by software for genetic linkage analysis. PED files have six mandatory columns, and additional optional columns (that are typically not used in the context of genomic analysis).

FHIR already has resources and extensions that represent a pedigree. A pedigree node extends FamilyMemberHistory using some of the existing extensions from the genetic verison of the pedigree. 

#### Mapping Notes

This element is mapped to the [FamilyMemberHistory](http://hl7.org/fhir/familymemberhistory.html) resource in FHIR. The genetics profile is not used because several fields are marked as _mustSupport_ and therefore cannot be restricted further. However, extending the genomics extension is also a possibility, but it would make the API slightly more complex.

There are some open questions. Is the family identifier needed? It seems to be used to combine multiple families in a PED file, but if the pedigree information is only going to be exported in PED format then it might not be necessary to store it because a family identifier could be generated in the export process.

#### Extensions

The [family-member-history-genetics-parent](http://hl7.org/fhir/extension-family-member-history-genetics-parent.html) and [family-member-history-genetics-sibling](http://hl7.org/fhir/extension-family-member-history-genetics-sibling.html) extensions were used to build the pedigree tree. New extensions were also needed for the [affected status](StructureDefinition-affected-status.html) and [family identifier](StructureDefinition-family-identifier.html) attributes.

