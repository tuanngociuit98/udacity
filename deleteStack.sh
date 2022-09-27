stack-array=`aws cloudformation list-stacks --query StackSummaries[*].StackName`
echo ${stack-array}
for stack in "${stack-array[@]}"; do
    echo "delete stack ${stack}"
    aws cloudformation delete-stack --stack-name ${stack}

done    