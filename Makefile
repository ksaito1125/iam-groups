STACK=iam-groups
TEMPLATE=groups.yaml

all: deploy status

deploy: $(TEMPLATE)
	aws cloudformation validate-template --template-body file://$(TEMPLATE)
	aws cloudformation deploy --capabilities CAPABILITY_NAMED_IAM --stack-name $(STACK) --template-file $(TEMPLATE)

clean:
	-aws cloudformation delete-stack --stack-name $(STACK)
	rm -f .deploy

status:
	-watch -d aws cloudformation describe-stacks --stack-name $(STACK) --query 'Stacks[].StackStatus'
