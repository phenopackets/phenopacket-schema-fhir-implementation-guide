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
<td><a href="StructureDefinition-pedigree-node-family-identifier.html">Family Identifier</a></td>
<td>The family identifier and the individual identifiers may be made up of letters and digits, and the combination of family and individual identifiers should uniquely identify each person represented in the PED file.</td>
</tr>
<tr>
<td><a href="StructureDefinition-pedigree-node-affected-status.html">null</a></td>
<td>Indicates if the individual has the affected phenotype of the proband.</td>
</tr>
<tr>
<td><a href="StructureDefinition-histology-morphology-behavior.html">Histology Morphology Behavior</a></td>
<td>A description of the morphologic and behavioral characteristics of the cancer.</td>
</tr>
<tr>
<td><a href="StructureDefinition-landmark-to-body-location-distance.html">Landmark To Body Location Distance</a></td>
<td>How far the body location of interest is from the given landmark.</td>
</tr>
<tr>
<td><a href="StructureDefinition-landmark-type.html">Landmark Type</a></td>
<td>The type of feature that constitutes the landmark, particularly if the landmark is an acquired body structure or physical object.</td>
</tr>
<tr>
<td><a href="StructureDefinition-code.html">Code</a></td>
<td>The main type identifier for a lab, procedure, condition, etc., usually drawn from a controlled vocabulary.</td>
</tr>
<tr>
<td><a href="StructureDefinition-primary-cancer-condition.html">Primary Cancer Condition</a></td>
<td>Records the history of the primary cancer condition, the original or first tumor in the body (reference https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.</td>
</tr>
<tr>
<td><a href="StructureDefinition-external-reference.html">External Reference</a></td>
<td>This element encodes the evidence type using, for example the Evidence & Conclusion Ontology (ECO).</td>
</tr>
<tr>
<td><a href="StructureDefinition-phenotypic-feature-severity.html">Phenotypic Feature Severity</a></td>
<td>The severity of a phenotype.</td>
</tr>
<tr>
<td><a href="StructureDefinition-phenotypic-feature-onset.html">Phenotypic Feature Onset</a></td>
<td>Describes the age at which a phenotypic feature was first noticed or diagnosed.</td>
</tr>
<tr>
<td><a href="StructureDefinition-landmark-location.html">Landmark Location</a></td>
<td>The body location of the landmark, specified by a location code and optional laterality and orientation.</td>
</tr>
<tr>
<td><a href="StructureDefinition-pedigree-node-individual.html">null</a></td>
<td>A reference to the individual referenced by this pedigree node.</td>
</tr>
<tr>
<td><a href="StructureDefinition-htsfile-genome-assembly.html">Genome Assembly</a></td>
<td>The genome assembly the contents of this file was called against. We recommend using the Genome Reference Consortium nomenclature e.g. GRCh37, GRCh38.</td>
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
<td><a href="StructureDefinition-individual-age.html">Individual Age</a></td>
<td>An age object describing the age of the individual at the time of collection of biospecimens or phenotypic observations reported in the current Phenopacket.</td>
</tr>
<tr>
<td><a href="StructureDefinition-anatomical-orientation.html">Anatomical Orientation</a></td>
<td>AnatomicalOrientation of the body location, if needed to distinguish from a similar location in another orientation.
The orientation element is part of BodyLocation, a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.</td>
</tr>
<tr>
<td><a href="StructureDefinition-individual-taxonomy.html">Individual Taxonomy</a></td>
<td>For resources where there may be more than one organism being studied it is advisable to indicate the taxonomic identifier of that organism, to its most specific level.</td>
</tr>
<tr>
<td><a href="StructureDefinition-laterality.html">Laterality</a></td>
<td>Body side of the body location, if needed to distinguish from a similar location on the other side of the body.
</td>
</tr>
<tr>
<td><a href="StructureDefinition-relation-to-landmark.html">Relation To Landmark</a></td>
<td>The relationship between a landmark that helps determine a body location and the body location itself.</td>
</tr>
<tr>
<td><a href="StructureDefinition-individual-karyotypic-sex.html">Karyotypic Sex</a></td>
<td>The chromosomal sex of an individual.</td>
</tr>
<tr>
<td><a href="StructureDefinition-landmark-to-body-location-direction.html">Landmark To Body Location Direction</a></td>
<td>The direction from the landmark to the body location of interest, given as a clockface direction or anatomical direction.</td>
</tr>
<tr>
<td><a href="StructureDefinition-htsfiles.html">Hts Files</a></td>
<td>List of high-throughput sequencing files generated as part of a genomic test.</td>
</tr>
<tr>
<td><a href="StructureDefinition-biosample-control.html">Biosample Control</a></td>
<td>Is this a control biosample?</td>
</tr>
<tr>
<td><a href="StructureDefinition-phenotypic-feature-modifier.html">Phenotypic Feature Modifier</a></td>
<td>A collection of ontology class elements that are intended to provide more expressive or precise descriptions of a phenotypic feature, including attributes such as positionality and external factors that tend to trigger or ameliorate the feature.</td>
</tr>
<tr>
<td><a href="StructureDefinition-biosample-individual-age-at-collection.html">Biosample Individual Age at Collection</a></td>
<td>Age of the proband at the time the biosample was taken.</td>
</tr>
</tbody>
</table>

