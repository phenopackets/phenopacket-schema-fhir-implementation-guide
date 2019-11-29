---
title: Profiles defined as part of this Guide
layout: default
active: profiles
---

<!-- { :.no_toc } -->

### Top-Level Elements

<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>

<tr>
<td><a href="StructureDefinition-Phenopacket.html">Phenopacket</a></td>
<td>A Phenopacket is an anonymous phenotypic description of an individual or biosample with potential genes of interest and/or diagnoses. </td>
</tr>
<tr>
<td><a href="StructureDefinition-Family.html">Family</a></td>
<td>Phenotype, sample and pedigree data required for a genomic diagnosis.</td>
</tr>
<tr>
<td><a href="StructureDefinition-Cohort.html">Cohort</a></td>
<td>A group of individuals related in some phenotypic or genotypic aspect.</td>
</tr>
<tr>
<td><a href="StructureDefinition-Interpretation.html">Interpretation</a></td>
<td>Represents the interpretation of a genomic analysis, such as the report from a diagnostic laboratory.</td>
</tr>

</tbody>
</table>

### Building Blocks

<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>

<tr>
<td><a href="StructureDefinition-Biosample.html">Biosample</a></td>
<td>A unit of biological material from which the substrate molecules (e.g. genomic DNA, RNA, proteins) for molecular analyses (e.g. sequencing, array hybridisation, mass-spectrometry) are extracted.</td>
</tr>
<tr>
<td><a href="StructureDefinition-Disease.html">Disease</a></td>
<td>The word phenotype is used with many different meanings, including 'the observable traits of an organism'. In medicine, the word can be used with at least two different meanings. It is used to refer to some observed deviation from normal morphology, physiology, or behavior. In contrast, the disease is a diagnosis, i.e., and inference or hypothesis about the cause underlying the observed phenotypic abnormalities. Occasionally, physicians use the word phenotype to refer to a disease, but we do not use this meaning here.</td>
</tr>
<tr>
<td><a href="StructureDefinition-HtsFile.html">Hts File</a></td>
<td>Phenopackets can be used to hold phenotypic information that can inform the analysis of sequencing data in VCF format as well as other high-throughput sequencing (HTS) or other data types.</td>
</tr>
<tr>
<td><a href="StructureDefinition-Individual.html">Individual</a></td>
<td>The subject of the Phenopacket is represented by an Individual element. This element intends to represent an individual human or other organism.</td>
</tr>
<tr>
<td><a href="StructureDefinition-PedigreeNode.html">Pedigree Node</a></td>
<td>The Phenopackets Pedigree element represents a PED file, which describes the family relationships of each specimen along with their gender and phenotype. PED files are typically used by software for genetic linkage analysis. PED files have six mandatory columns, and additional optional columns (that are typically not used in the context of genomic analysis). FHIR already has resources and extensions that represent a pedigree. A pedigree node extends the FamilyMemberHistory-Genetic profile.</td>
</tr>
<td><a href="StructureDefinition-PhenotypicFeature.html">Phenotypic Feature</a></td>
<td>This element is intended to be used to describe a phenotype that characterizes the subject of the Phenopacket. For medical use cases the subject will generally be a patient or a proband of a study, and the phenotypes will be abnormalities described by an ontology such as the Human Phenotype Ontology. The word phenotype is used with many different meanings including disease entity, but in this context we mean an individual phenotypic feature, observed as either present or absent, with possible onset, modifiers and frequency.</td>
</tr>

</tbody>
</table>
