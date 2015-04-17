
# Target environment from first arg
TARGET=${1:-test}
echo $TARGET

aws cloudformation create-stack\
    --region=eu-west-1 \
    --stack-name $TARGET \
    --template-body \
    file://$PWD/foobar-arch.json \
    --capabilities CAPABILITY_IAM \
    --parameters ParameterKey=Profile,ParameterValue=PROD ParameterKey=DnsMangler,ParameterValue=$TARGET

