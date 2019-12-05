TEMPLATE_BODY=$(cat lambda-template.yaml)
aws cloudformation create-stack --stack-name cf-lambda-hello --template-body "$TEMPLATE_BODY" --capabilities CAPABILITY_IAM
