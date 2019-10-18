---
title: Guidance
layout: default
active: Guidance
---

### Background

This implementation guide uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, its important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following prior to reading the rest of this implementation guide.

   - [FHIR overview](http://build.fhir.org/overview.html)
   - [Developer's Introduction](http://build.fhir.org/overview-dev.html) 
   - [Clinical Introduction](http://build.fhir.org/overview-clinical.html)
   - [FHIR data types](http://build.fhir.org/datatypes.html)
   - [Using codes](http://build.fhir.org/terminologies.html)
   - [References between resources](http://build.fhir.org/references.html)
   - [How to read resource and profile definitions](http://build.fhir.org/formats.html)
   - [Base resource](http://build.fhir.org/resource.html)
   
This implementation guide builds on latest version of FHIR at the time of writing: R4.

### Working with Phenopackets

FHIR defines a model that is independent of programming languages and data formats. There are many open source [FHIR reference libraries](https://wiki.hl7.org/Open_Source_FHIR_implementations) and any of these can be used to create FHIR resources. In this guide we use the [HAPI FHIR](https://hapifhir.io/) java implementation to create FHIR resource programatically and write them in JSON format.

The Phenopackets on FHIR Implementation Guide (IG) constrains and extends the base FHIR resources to describe concepts that are necessary to represent detailed patient phenotype information. However, the IG itself is not necessary to create thse resources. Compliant resources can be created using the existing FHIR APIs. The IG can be used, however, to validate that a resource is valid according to the constraints specified in the profiles. Also, the IG can be used to create a profile-aware API that facilitates the creation of compliant resources. 

#### Java (Standalone)

A FHIR server is not needed to create a FHIR Phenopacket instance. The HAPI FHIR libraries can be used to create an instance, validate it against the IG and save it in JSON, XML or RDF.

The following steps will describe how to create a simple Phenopacket in Java and validate it using the IG. First, the HAPI dependencies need to be added to the project. If you are using Maven, these are:

```xml
<dependency>
  <groupId>ca.uhn.hapi.fhir</groupId>
  <artifactId>hapi-fhir-base</artifactId>
  <version>4.0.0</version>
</dependency>

<dependency>
  <groupId>ca.uhn.hapi.fhir</groupId>
  <artifactId>hapi-fhir-structures-r4</artifactId>
  <version>4.0.0</version>
</dependency>

<dependency>
  <groupId>ca.uhn.hapi.fhir</groupId>
  <artifactId>hapi-fhir-validation</artifactId>
  <version>4.0.0</version>
</dependency>

<dependency>
  <groupId>ca.uhn.hapi.fhir</groupId>
  <artifactId>hapi-fhir-validation-resources-r4</artifactId>
  <version>4.0.0</version>
</dependency>

<dependency>
  <groupId>com.helger</groupId>
  <artifactId>ph-schematron</artifactId>
  <version>5.0.4</version>
</dependency>

<dependency>
  <groupId>com.helger</groupId>
  <artifactId>ph-commons</artifactId>
  <version>9.1.1</version>
</dependency>
```
Check the HAPI FHIR [downloads page](https://hapifhir.io/download.html) for up to date dependencies.



#### Java (Server)

TODO

### Examples

#### Rare Disease

This example shows how to create a FHIR Phenopacket to represent a [case report](https://www.ncbi.nlm.nih.gov/pubmed/30808312) about a boy with Bethlem myopathy.

The following block creates a FHIR Bundle that will contain everything. This bundle is of type _document_ so the first element should be a [Composition resource](https://www.hl7.org/fhir/composition.html).

```java
Bundle bundle = 
  new Bundle()
    .setType(BundleType.DOCUMENT)
    .setIdentifier(new Identifier().setSystem(GA4GH_SYSTEM).setValue("1"));
bundle
  .getMeta()
    .setLastUpdated(new Date());
```

The proband is created with the following code:


#### Cancer

TODO

