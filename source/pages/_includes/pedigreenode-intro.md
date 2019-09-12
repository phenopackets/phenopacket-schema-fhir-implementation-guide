The Phenopackets Pedigree element represents a PED file, which describes the family relationships of each specimen along with their gender and phenotype. PED files are typically used by software for genetic linkage analysis. PED files have six mandatory columns, and additional optional columns (that are typically not used in the context of genomic analysis).

FHIR already has resources and extensions that represent a pedigree. A pedigree node extends FamilyMemberHistory-Genetic. 

#### Mapping Notes

This element is mapped to the [FamilyMemberHistor-Geneticy](http://hl7.org/fhir/R4/familymemberhistory-genetic.html) profile in FHIR.

An extension is used to represent a family identifier, which is required in the PED format. If the person that the node is referring to has a corresponding Individual resource in the Phenopacket, an extension can be used to reference this node. Even though each node can contain coded conditions, an extension is used to represent an _affected status_, which just indicates if this person is affected or not by the condition of interest.

#### Extensions

Extensions were created for the [family identifier](StructureDefinition-family-identifier.html) and [affected status](StructureDefinition-affected-status.html) attributes.

