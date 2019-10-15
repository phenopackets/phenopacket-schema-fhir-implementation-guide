#!/bin/bash
echo Building Phenopackets IG
java -jar org.hl7.fhir.publisher.jar -tx http://localhost:8080/fhir -ig ig.json 