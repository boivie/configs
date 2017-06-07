export AWS_ACCESS_KEY_ID=`aws configure --profile=$1 get aws_access_key_id`
export AWS_SECRET_ACCESS_KEY=`aws configure --profile=$1 get aws_secret_access_key`
