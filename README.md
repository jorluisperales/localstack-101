# localstack-101
 



# Get list of EC2 instances

aws --endpoint-url=http://localhost:4566 ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId,InstanceType,PublicIpAddress,Tags[?Key==`Name`]| [0].Value]' --output table --region us-east-1

NOTE: make sure to use the correct url or ip
