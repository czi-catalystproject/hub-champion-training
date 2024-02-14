#!/bin/bash
# Helper shell script to update exercise in episodes/manage_images.md with the latest handbook-authoring-image tag.

FILE=${PWD}"/episodes/manage_images.md"
sed -i 's/LATEST/'$1'/g' $FILE
