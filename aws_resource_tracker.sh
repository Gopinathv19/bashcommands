#!/bin/bash
#######################################
#Author :Gopinath
#Date Created: 17 may 2024
#Version V1
########################################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x

# list s3 buckets
echo "S3 BUCKETS DETAILS"
aws s3 ls

# list EC2 Instances
echo " INSTANCES ID"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


# list lambda
echo "LAMBDA FUNCTION DETAILS"
aws lambda list-functions


#list IAM Users
echo "IAM USER DETAILS"
aws iam list-users

# full instance detail

echo "INSTANCE FULL DETAIL"

aws ec2 describe-instances

