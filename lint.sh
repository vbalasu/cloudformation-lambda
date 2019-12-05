docker run -ti --rm --entrypoint cfn-lint -v $(pwd):/host vbalasu/cfn-python-lint /host/$TEMPLATE
