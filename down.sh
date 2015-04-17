TARGET=${1:-test}
echo $TARGET

aws cloudformation --region=eu-west-1 delete-stack --stack-name $TARGET
