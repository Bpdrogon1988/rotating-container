#!/bin/bash

set -e
IMAGE_NAME="rotating-encrypted-app"
TAG=$(date +%Y%m%d%H%M)

./rotate.sh
KEY=$(cat .cosign.key)

docker build -t $IMAGE_NAME:$TAG .

cosign generate-key-pair
cosign sign --key cosign.key $IMAGE_NAME:$TAG

echo "Image $IMAGE_NAME:$TAG signed and ready."
