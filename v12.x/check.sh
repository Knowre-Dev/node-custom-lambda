#!/bin/bash

LAYER_NAME=nodejs12

REGIONS='
ap-northeast-1
ap-northeast-2
ap-south-1
ap-southeast-1
ap-southeast-2
ca-central-1
eu-central-1
eu-west-1
eu-west-2
eu-west-3
sa-east-1
us-east-1
us-east-2
us-west-1
us-west-2
'

for region in $REGIONS; do
  aws lambda list-layer-versions --region $region --layer-name $LAYER_NAME \
    --query 'LayerVersions[*].[LayerVersionArn]' --output text
done
