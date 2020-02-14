#!/bin/bash

# Stops script if there are errors
set -e

# Patches the output resources to account for a bug in the Sushi compiler - see https://github.com/FHIR/sushi/issues/207
# Also modifies the generated ImplementationGuide resource to add expansion parameters to Ontoserver and limit expansion results to 1000

echo "Fixing output (see https://github.com/FHIR/sushi/issues/207) and adding expansion parameters to terminology server"

java -jar fsh-workaround-1.0.jar build/input/resources/StructureDefinition-Interpretation.json

cd build

if [ ! -d "input-cache" ] 
then
    echo "Downloading IG Builder"
    ./_updatePublisher.sh
else
    echo "IG builder has already been downloaded"
fi

echo "Running IG builder"

# Runs the IG publisher with the public R4 Ontoserver as the terminology server
java -jar input-cache/org.hl7.fhir.publisher.jar -tx https://r4.ontoserver.csiro.au/fhir -ig ig.ini
