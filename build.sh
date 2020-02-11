#!/bin/bash

# Stops script if there are errors
set -e

# Patches the output resources to account for a bug in the Sushi compiler - see https://github.com/FHIR/sushi/issues/207

java -jar fsh-workaround-1.0.jar build/input/resources/StructureDefinition-Interpretation.json

echo "Finished fixing output - see https://github.com/FHIR/sushi/issues/207"

cd build

# Runs the IG publisher
java -jar input-cache/org.hl7.fhir.publisher.jar -tx https://r4.ontoserver.csiro.au/fhir -ig ig.ini