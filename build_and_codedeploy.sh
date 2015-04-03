#!/bin/bash

./build.sh && aws deploy create-deployment --application-name ${DEPLOY_APPLICATION_NAME} --region ${DEPLOY_REGION} --deployment-group ${DEPLOYMENT_GROUP} --revision "{\"revisionType\":\"S3\", \"s3Location\": {\"bucket\": \"${DEPLOY_BUCKET}\", \"key\": \"${DEPLOY_KEY}\", \"bundleType\": \"zip\"}}"
