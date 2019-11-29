---
title: Profiles defined as part of this Guide
layout: default
active: profiles
---

<!-- { :.no_toc } -->

### Extensions

<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="StructureDefinition-biosample-control.html">Biosample Control</a></td>
<td>Is this a control biosample?</td>
</tr>
<tr>
<td><a href="StructureDefinition-biosample-diagnostic-markers.html">Biosample Diagnostic Markers</a></td>
<td>Clinically relevant bio markers. Most of the assays such as immunohistochemistry (IHC) are covered by the NCIT under the sub-hierarchy NCIT:C36292 (Laboratory Test Result), e.g. NCIT:C68748 (HER2/Neu Positive), NCIT:C131711 (Human Papillomavirus-18 Positive).</td>
</tr>
<tr>
<td><a href="StructureDefinition-biosample-histological-diagnosis.html">Biosample Histological Diagnosis</a></td>
<td>This is the pathologist’s diagnosis and may often represent a refinement of the clinical diagnosis (which could be reported in the Phenopacket that contains this Biosample). Normal samples would be tagged with the term "NCIT:C38757", "Negative Finding".</td>
</tr>
<tr>
<td><a href="StructureDefinition-biosample-individual-age-at-collection.html">Biosample Individual Age at Collection</a></td>
<td>Age of the proband at the time the biosample was taken.</td>
</tr>
<tr>
<td><a href="StructureDefinition-biosample-tumor-grade.html">Biosample Tumor Grade</a></td>
<td>List of terms representing the tumor grade. This should be a child term of NCIT:C28076 (Disease Grade Qualifier) or equivalent.</td>
</tr>
<tr>
<td><a href="StructureDefinition-biosample-tumor-progression.html">Biosample Tumor Progression</a></td>
<td>This field can be used to indicate if a specimen is from the primary tumor, a metastasis or a recurrence. There are multiple ways of representing this using ontology terms, and the terms chosen should have a specific meaning that is application specific.</td>
</tr>
<tr>
<td><a href="StructureDefinition-disease-onset.html">Disease Onset</a></td>
<td>The onset of the disease using an ontology class.</td>
</tr>
<tr>
<td><a href="StructureDefinition-evidence.html">Evidence</a></td>
<td>This element intends to represent the evidence for an assertion such as an observation of a PhenotypicFeature element. We recommend the use of terms from the Evidence and Conclusion Ontology (ECO).</td>
</tr>
<tr>
<td><a href="StructureDefinition-external-reference.html">External Reference</a></td>
<td>This element encodes the evidence type using, for example the Evidence & Conclusion Ontology (ECO).</td>
</tr>
<tr>
<td><a href="StructureDefinition-htsfile-genome-assembly.html">HTS File Genome Assembly</a></td>
<td>The genome assembly the contents of this file was called against. We recommend using the Genome Reference Consortium nomenclature e.g. GRCh37, GRCh38.</td>
</tr>
<tr>
<td><a href="StructureDefinition-htsfiles.html">Hts Files</a></td>
<td>List of high-throughput sequencing files generated as part of a genomic test.</td>
</tr>
<tr>
<td><a href="StructureDefinition-individual-age.html">Individual Age</a></td>
<td>An age object describing the age of the individual at the time of collection of biospecimens or phenotypic observations reported in the current Phenopacket.</td>
</tr>
<tr>
<td><a href="StructureDefinition-individual-karyotypic-sex.html">Individual Karyotypic Sex</a></td>
<td>The chromosomal sex of an individual.</td>
</tr>
<tr>
<td><a href="StructureDefinition-individual-taxonomy.html">Individual Taxonomy</a></td>
<td>For resources where there may be more than one organism being studied it is advisable to indicate the taxonomic identifier of that organism, to its most specific level.</td>
</tr>
<tr>
<td><a href="StructureDefinition-pedigree-node-affected-status.html">Pedigree Node Affected Status</a></td>
<td>Indicates if the individual has the affected phenotype of the proband.</td>
</tr>
<tr>
<td><a href="StructureDefinition-pedigree-node-family-identifier.html">Pedigree Node Family Identifier</a></td>
<td>The family identifier and the individual identifiers may be made up of letters and digits, and the combination of family and individual identifiers should uniquely identify each person represented in the PED file.</td>
</tr>
<tr>
<td><a href="StructureDefinition-pedigree-node-individual.html">Pedigree Node Individual</a></td>
<td>A reference to the individual referenced by this pedigree node.</td>
</tr>
<tr>
<td><a href="StructureDefinition-phenotypic-feature-modifier.html">Phenotypic Feature Modifier</a></td>
<td>A collection of ontology class elements that are intended to provide more expressive or precise descriptions of a phenotypic feature, including attributes such as positionality and external factors that tend to trigger or ameliorate the feature.</td>
</tr>
<tr>
<td><a href="StructureDefinition-phenotypic-feature-onset.html">Phenotypic Feature Onset</a></td>
<td>Describes the age at which a phenotypic feature was first noticed or diagnosed.</td>
</tr>
<tr>
<td><a href="StructureDefinition-phenotypic-feature-severity.html">Phenotypic Feature Severity</a></td>
<td>The severity of a phenotype.</td>
</tr>
</tbody>
</table>

