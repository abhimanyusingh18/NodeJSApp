#!/bin/bash
TIMESTAMP=$(date +%Y%m%d%H%M%S)

IMAGE_NAME="node-ci-cd-app"
AWS_ACCOUNT_ID="368721899659"
REGION="ap-south-1"
REPO="$AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$IMAGE_NAME"

docker build -t $IMAGE_NAME:$TIMESTAMP .

aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com

docker tag $IMAGE_NAME:$TIMESTAMP $REPO:$TIMESTAMP

docker tag $IMAGE_NAME:$TIMESTAMP $REPO:latest

docker push $REPO:$TIMESTAMP
docker push $REPO:latest

echo "Pushed image: $REPO:$TIMESTAMP"
