# cloudformation-lambda

This is a starter template for how to deploy a Lambda function using a Cloudformation template

The components are as follows:

- `lambda-template.yaml` - Cloudformation template
- `lambda_function.py` - Lambda function code

First you build the lambda function code and create a zip archive as follows: `zip mylambda.zip *.py`

This creates `mylambda.zip` which you upload to an S3 bucket. The cloudformation template then references this location to launch the Lambda function

You can use `./lint.sh` to detect issues with the yaml template. This leverages the `vbalasu/cfn-python-lint` docker image.

Then create the CloudFormation stack using `./deploy.sh`

Once the deployment is successful, you can invoke the lambda function using `./run.sh`, and the function output is stored in `output.txt`