---
title: Examples
layout: default
active: examples
---

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

<!-- * Do not remove this line (it will not be displayed)
{:toc} -->

<!-- end TOC -->

### Working with Phenopackets on FHIR

FHIR defines a model that is independent of programming languages and data formats. There are many open source [FHIR reference libraries](https://wiki.hl7.org/Open_Source_FHIR_implementations) and any of these can be used to create FHIR resources. In this guide we use the [HAPI FHIR](https://hapifhir.io/) java implementation to create FHIR resource programatically and write them in JSON format.

The Phenopackets on FHIR Implementation Guide (IG) constrains and extends the base FHIR resources to describe concepts that are necessary to represent detailed patient phenotype information. However, the IG itself is not necessary to create thse resources. Compliant resources can be created using the existing FHIR APIs. The IG can be used, however, to validate that a resource is valid according to the constraints specified in the profiles. Also, the IG can be used to create a profile-aware API that facilitates the creation of compliant resources. 

#### Java (Standalone)

A FHIR server is not needed to create a FHIR Phenopacket instance. The HAPI FHIR libraries can be used to create an instance, validate it against the IG and save it in JSON, XML or RDF.

The following steps will describe how to create a simple Phenopacket in Java and validate it using the IG. First, the HAPI dependencies need to be added to the project. If you are using Maven, these are:

```xml
<dependency>
  <groupId>ca.uhn.hapi.fhir</groupId>
  <artifactId>hapi-fhir-base</artifactId>
  <version>4.0.1</version>
</dependency>

<dependency>
  <groupId>ca.uhn.hapi.fhir</groupId>
  <artifactId>hapi-fhir-structures-r4</artifactId>
  <version>4.0.1</version>
</dependency>

<dependency>
  <groupId>ca.uhn.hapi.fhir</groupId>
  <artifactId>hapi-fhir-validation</artifactId>
  <version>4.0.1</version>
</dependency>

<dependency>
  <groupId>ca.uhn.hapi.fhir</groupId>
  <artifactId>hapi-fhir-validation-resources-r4</artifactId>
  <version>4.0.1</version>
</dependency>

<dependency>
  <groupId>com.helger</groupId>
  <artifactId>ph-schematron</artifactId>
  <version>5.2.0</version>
</dependency>

<dependency>
  <groupId>com.helger</groupId>
  <artifactId>ph-commons</artifactId>
  <version>9.3.8</version>
</dependency>
```
Check the HAPI FHIR [downloads page](https://hapifhir.io/download.html) for up to date dependencies.

Instructions on how to validate a FHIR resource using an implementation guide with the HAPI libraries can be found [here](https://hapifhir.io/doc_validation.html).

#### Java (Server)

The Phenopackets on FHIR can also be used to validate resources uploded to a FHIR server. Instructions on how to set up validation in the open source HAPI server can be found [here](https://hapifhir.io/doc_rest_server_interceptor.html#_toc_requestresponse_validation).

### Examples

#### Rare Disease

This example shows how to create a FHIR Phenopacket to represent a [case report](https://www.ncbi.nlm.nih.gov/pubmed/30808312) about a boy with Bethlem myopathy.

The following block creates a FHIR Bundle that will contain everything. This bundle is of type _document_ so the first element should be a [Composition resource](https://www.hl7.org/fhir/composition.html).

```java
Bundle bundle = 
  new Bundle()
    .setType(BundleType.DOCUMENT)
    .setIdentifier(new Identifier().setSystem(GA4GH_SYSTEM).setValue(UUID.randomUUID().toString()));
bundle
  .getMeta()
    .setLastUpdated(new Date());
```

The proband is represented as a profile on the Patient resource.

```java
Patient proband = 
  new Patient()
    .setGender(AdministrativeGender.MALE);
proband.setId(UUID.randomUUID().toString());
```

In Phenopackets on FHIR, the age of the patient is captured in an encounter, not directly in the individual.

```java
Encounter encounter = new Encounter();
encounter.setStatus(EncounterStatus.FINISHED);
encounter.setClass_(new Coding().setSystem(ACT_CODE).setCode("IMP").setDisplay("inpatient encounter"));
encounter.setSubject(new Reference(proband));
encounter.addExtension(AGE_URL, new Age().setSystem(UCUM).setCode("a").setValue(14));
encounter.setId(UUID.randomUUID().toString());
```

Variants are represented using a profile derived from the Genomics Reporting profile developed in the Genomics Reporting FHIR IG.

```java
Observation heterozygousCOL6A1Variant = 
    new Observation()
      .setStatus(ObservationStatus.FINAL)
      .setCode(getCodeableConcept(LOINC, "69548-6", "Genetic variant assessment"))
      .setValue(getCodeableConcept(LOINC, "LA9633-4", "Present"));
heterozygousCOL6A1Variant.setId(UUID.randomUUID().toString());

heterozygousCOL6A1Variant
  .addComponent()
    .setCode(getCodeableConcept(LOINC, "81290-9", "Genomic DNA change (gHGVS)"))
    .setValue(getCodeableConcept(HGVS, "NM_001848.2:c.877G>A", "Homo sapiens collagen type VI alpha 1 chain (COL6A1), mRNA"));

heterozygousCOL6A1Variant
  .addComponent()
    .setCode(getCodeableConcept(LOINC, "53034-5", "Allelic state"))
    .setValue(getCodeableConcept(LOINC, "LA6706-1", "Heterozygous"));
  
DiagnosticReport report = 
    new DiagnosticReport()
      .setCode(getCodeableConcept(LOINC, "81247-9", "Master HL7 genetic variant reporting panel"))
      .setStatus(DiagnosticReportStatus.FINAL)
      .setSubject(new Reference(proband));
report.setId(UUID.randomUUID().toString());
report.addResult().setResource(heterozygousCOL6A1Variant);  
```

A complex extension was created to represent an evidence element.

```java
Extension evidence = new Extension(EVIDENCE_URL);
evidence.addExtension("evidenceCode", getCodeableConcept(ECO, "ECO:0000033", 
    "author statement supported by traceable reference"));
Extension reference = new Extension(REFERENCE_URL);
reference.addExtension("id", new UrlType("http://www.ncbi.nlm.nih.gov/pubmed/30808312"));
reference.addExtension("description", new StringType(
    "COL6A1 mutation leading to Bethlem myopathy with recurrent hematuria: a case report."));
evidence.addExtension(reference);
```

Phenotypic features are represented as a profile on the Observation resource. Extensions were required to represent _severity_, _modifiers_, coded _onset_ and _evidence_. The following example shows how to add an extension to represent coded onset. The other phenotypic features in the example are excluded for brevity.

```java
Observation decreasedFetalMovement = 
  new Observation()
    .setStatus(ObservationStatus.FINAL)
    .setCode(getCodeableConcept(HPO, "HP:0001558", "Decreased fetal movement"))
    .setInterpretation(getInterpretation(true))
    .setSubject(new Reference(proband));
decreasedFetalMovement.setId(UUID.randomUUID().toString());
decreasedFetalMovement.addExtension(ONSET_URL, 
    getCodeableConcept(HPO, "HP:0011461", "Fetal onset"));
decreasedFetalMovement.addExtension(evidence);
```

A Phenopacket is represented as a Composition with different sections that contain references to all the resources that belong ot the Phenopacket. The resources can also reference other resources in the Phenopacket. For example, every Observation resource references the Individual that is the subject of the observation. 

```java
Composition phenopacket = 
    new Composition()
      .setStatus(CompositionStatus.FINAL)
      .setType(getCodeableConcept(GA4GH_DOC_TYPE, "phenopacket", "Phenopacket"))
      .setDate(new Date())
      .setTitle("Phenopacket")
      .setSubject(new Reference(proband))
      .addAuthor(new Reference(author));
  phenopacket.setId(UUID.randomUUID().toString());

if (phenotypicFeatures != null) {
  SectionComponent phenotypicFeaturesSection = phenopacket
    .addSection()
      .setTitle("Phenotypic Features")
      .setCode(getCodeableConcept(GA4GH_SECTION_TYPE, "phenotypic-features", 
          "Phenotypic features"))
      .setMode(SectionMode.SNAPSHOT);
  for (Observation obs : phenotypicFeatures) {
    phenotypicFeaturesSection.addEntry(new Reference(obs));
  }
}
...
```

The composition does not contain the resources directly. All the resources, including the composition, are added to a Bundle resource to be packaged and transmitted. The Composition resource is always the first entry in the bundle.

```java
Bundle bundle = 
    new Bundle()
      .setType(BundleType.DOCUMENT)
      .setIdentifier(new Identifier()
        .setSystem(GA4GH_SYSTEM)
        .setValue(UUID.randomUUID().toString()));
bundle
  .getMeta()
    .setLastUpdated(new Date());

bundle.addEntry()
  .setResource(composition)
  .setFullUrl("urn:uuid:" + composition.getId());
...
```

The JSON representation of the Phenopacket can be printed to the console by using the FHIR JSON parser.

```java
FhirContext ctx = FhirContext.forR4();
System.out.println(ctx.newJsonParser().setPrettyPrint(true).encodeResourceToString(bundle));
```

#### Cancer

TODO


