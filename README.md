Phenopackets on FHIR
==================

This FHIR implementation guide has been produced as part of the [GA4GH](https://ga4gh.org) [Clinical Phenotype Data Capture Workstream](https://ga4gh-cp.github.io/).

It is based on the [Phenopackets standard](https://phenopackets-schema.readthedocs.io/en/latest/index.html) and uses the [Clinical Genomics Reporting FHIR implementation guide](http://build.fhir.org/ig/HL7/genomics-reporting/).

Documentation
=============

This project contains the source code for the implementation guide. The website generate from this project can be found [here](https://aehrc.github.io/fhir-phenopackets-ig/).

Building
=================

There are two steps required to build the implementation guide. This guide shows how to build in *nix operating systems.

1. Compile the FHIR Shorthand source

```
sushi .
```

2. Update the publisher, fix the output and run the IG builder

```
./build.sh
```

The script will download the IG publisher the first time it is run. If you want to manually update to the latest version of the publisher you will need to run the `_updatePublisher.sh` script inside the `build` folder. Then it will run a Java application that modifies the output of Sushi to fix a bug (see [here](https://github.com/FHIR/sushi/issues/207)) and adds expansion parameters to the terminology server. Finally, it runs the IG publisher.
