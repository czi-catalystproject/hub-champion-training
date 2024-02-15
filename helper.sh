#!/bin/bash
# Helper shell script to update exercise in episodes/manage_images.md with the latest handbook-authoring-image tag.

FILE=${PWD}"/episodes/manage_images.md"
TAG=`curl -s -H "Authorization: Bearer "$1"" -X GET "https://quay.io/api/v1/repository/2i2c/handbook-authoring-image/tag/" | grep -Eo '"name": *"[^"]*"' | head -1 | awk '{ print $2 }' | tr -d \"`
sed -i 's/LATEST/'${TAG}'/g' ${FILE}
