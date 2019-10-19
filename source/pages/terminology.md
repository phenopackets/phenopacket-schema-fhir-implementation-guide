---
title: Terminology
layout: default
active: terminology
---
<!-- { :.no_toc } -->
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
<!-- * Do not remove this line (it will not be displayed)
{:toc} -->
<!-- end TOC -->

<br/>

### Code Systems

<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="https://github.com/evidenceontology/evidenceontology/">Evidence &amp; Conclusion Ontology (ECO)</a></td>
<td>ECO is used to represent scientific evidence in biological research. This is an OWL ontology transformed into an FHIR code system.</td>
</tr>
<tr>
<td><a href="https://www.ncbi.nlm.nih.gov/taxonomy">NCBI Taxonomy</a></td>
<td>The NCBI Taxonomy Database is a curated classification and nomenclature for all of the organisms in the public sequence databases. This is an OWL ontology transformed into an FHIR code system.</td>
</tr>
<tr>
<td><a href="http://snomed.info/sct">SNOMED CT</a></td>
<td>SNOMED CT is the most comprehensive, multilingual clinical healthcare terminology in the world.</td>
</tr>
<tr>
<td><a href="https://hpo.jax.org/app/">HPO</a></td>
<td>The Human Phenotype Ontology (HPO) provides a standardized vocabulary of phenotypic abnormalities encountered in human disease.</td>
</tr>

<tr>
<td><a href="CodeSystem-karyotypic-sex.html">Karyotypic Sex</a></td>
<td>Represents the chromosomal sex of an individual.</td>
</tr>
<tr>
<td><a href="CodeSystem-affected-status.html">Affected Status</a></td>
<td>An enumeration used to represent whether a person is affected by a condition of interest in the context of a pedigree.</td>
</tr>
<tr>
<td><a href="CodeSystem-section-type.html">Section Type</a></td>
<td>Represents the different types of sections in the objects that are built as compositions in the Phenopackets standard.</td>
</tr>
<tr>
<td><a href="CodeSystem-document-type.html">Document Type</a></td>
<td>Represents the different types of documents in the Phenopackets standard.</td>
</tr>
<tr>
<td><a href="CodeSystem-hts-format.html">Hts Format</a></td>
<td>An enumeration used to represent different high-throughput sequencing file formats.</td>
</tr>

</tbody>
</table>

### Value Sets

<table>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="ValueSet-cancer-staging-system.html">Cancer Staging System</a></td>
<td>System used for staging. Because SNOMED CT does not currently have a code representing AJCC Version 8, specify the exact text 'AJCC Version 8' in the text sub-field of the code structure, and omit the code.</td>
</tr>
<tr>
<td><a href="ValueSet-tnm-distant-metastases-category.html">TNM Distant Metastases Category</a></td>
<td>This value set is intended to contain allowable values for the M category, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferrably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.</td>
</tr>
<tr>
<td><a href="ValueSet-cancer-body-location.html">Cancer Body Location</a></td>
<td>Codes describing the location(s) of primary or secondary cancer. The value set includes all codes from the SNOMED CT body structure hierarchy (codes descending from 123037004 'Body Structure'). The cancer body location may also be expressed using ICD-O-3 topography codes, however, those codes are not included here due to intellectual property restrictions. No other code systems are considered conformant.</td>
</tr>
<tr>
<td><a href="ValueSet-phenotypic-feature-type.html">Phenotypic Feature Type</a></td>
<td>The primary ontology class which describes the phenotype.</td>
</tr>
<tr>
<td><a href="ValueSet-landmark-type.html">Landmark Type</a></td>
<td>The type of feature that constitutes the landmark, for example, particularly if the landmark is an acquired body structure or physical object. The landmark type value set is part of BodyLocation, a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.</td>
</tr>
<tr>
<td><a href="ValueSet-anatomical-direction.html">Anatomical Direction</a></td>
<td>Terms that specify anatomical direction.</td>
</tr>
<tr>
<td><a href="ValueSet-tnm-stage-group.html">TNM Stage Group</a></td>
<td>This value set is intended to contain allowable values for Stage Group, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferrably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.</td>
</tr>
<tr>
<td><a href="ValueSet-onset.html">Onset</a></td>
<td>Onset terms from the Human Phenotype Ontology and SNOMED CT.</td>
</tr>
<tr>
<td><a href="ValueSet-histology-morphology-behavior.html">Histology Morphology Behavior</a></td>
<td>Codes representing the structure, arrangement, and behavioral characteristics of tumors and cancer cells. Codes are preferrably taken from the SNOMED CT hierarchy under 367651003 (Malignant neoplasm of primary, secondary, or uncertain origin (morphologic abnormality)). ICD-O-3 morphology codes (including behavior suffix) can also be used, although they are not included in the value set for intellectual property reasons. For primary cancers, the ICD-O-3 behavior suffix should be /1, /2, or /3. For secondary cancers, the ICD-O-3 behavior suffix should be /6. Only SNOMED CT and ICD-O-3 are considered conformant to the specification.</td>
</tr>
<tr>
<td><a href="ValueSet-phenotypic-feature-modifier.html">Phenotypic Feature Modifier</a></td>
<td>Clinical modifier terms from the Human Phenotype Ontology. TODO: include corresponding concepts from SNOMED CT.</td>
</tr>
<tr>
<td><a href="ValueSet-anatomical-orientation.html">Anatomical Orientation</a></td>
<td>Terms that specify anatomical orientation. The orientation value set is part of BodyLocation, a flexible structure that allows the location to be determined by a single code, or a code plus laterality and/or orientation. The body location can also be specified in relation to one or more body landmarks. SNOMED CT is used in all cases.</td>
</tr>
<tr>
<td><a href="ValueSet-phenotypic-feature-interpretation.html">Phenotypic Feature Interpretation</a></td>
<td>Concepts to indicate the interpretation of a phenotypic feature (present or absent).</td>
</tr>
<tr>
<td><a href="ValueSet-tnm-regional-nodes-category.html">TNM Regional Nodes Category</a></td>
<td>This value set is intended to contain allowable values for the N category, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferrably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.</td>
</tr>
<tr>
<td><a href="ValueSet-karyotypic-sex.html">Karyotypic Sex</a></td>
<td>Represents the chromosomal sex of an individual.</td>
</tr>
<tr>
<td><a href="ValueSet-units-of-length.html">Units Of Length</a></td>
<td>Units of measure related to length or distance.</td>
</tr>
<tr>
<td><a href="ValueSet-evidence.html">Evidence</a></td>
<td>Codes from the Evidence & Conclusion Ontology.</td>
</tr>
<tr>
<td><a href="ValueSet-hts-format.html">HTS Format</a></td>
<td>Represents different high-throughput sequencing file formats.</td>
</tr>
<tr>
<td><a href="ValueSet-tnm-primary-tumor-category.html">TNM Primary Tumor Category</a></td>
<td>This value set is intended to contain allowable values for the T category, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferrably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.</td>
</tr>
<tr>
<td><a href="ValueSet-pedigree-affected-status.html">Pedigree Affected Status</a></td>
<td>An enumeration used to represent whether a person is affected by a condition of interest in the context of a pedigree.</td>
</tr>
<tr>
<td><a href="ValueSet-taxonomy.html">Taxonomy</a></td>
<td>Taxonomic identifiers of an organism.</td>
</tr>
<tr>
<td><a href="ValueSet-secondary-cancer-disorder.html">Secondary Cancer Disorder</a></td>
<td>Types of secondary malignant neoplastic disease, coded in SNOMED CT. Use a code from the disorder hierarchy under secondary malignant neoplastic disease (SNOMED CT 128462008).</td>
</tr>
<tr>
<td><a href="ValueSet-phenotypic-feature-severity.html">Phenotypic Feature Severity</a></td>
<td>Phenotypic feature severity from the Human Phenotype Ontology and SNOMED CT.</td>
</tr>
<tr>
<td><a href="ValueSet-primary-or-uncertain-behavior-cancer-disorder.html">Primary Or Uncertain Behavior Cancer Disorder</a></td>
<td>Types of primary malignant neoplastic disease, coded in SNOMED CT. Use a code from the disorder hierarchy under SNOMED CT 363346000 'Malignant neoplastic disease (disorder)' excluding codes descending from SNOMED CT 128462008 'Secondary malignant neoplastic disease (disorder)'. If body location is not precoordinated (i.e., implied by the code), the site of the primary tumor should be specified in the body site attribute.</td>
</tr>
</tbody>
</table>

