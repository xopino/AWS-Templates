# In order to launch an ec2 instance:

1- create cluster

2- create instance

- add ec2IAM role
- add this user data:
```bash
#!/bin/bash
cat <<'EOF' >> /etc/ecs/ecs.config
ECS_CLUSTER={cluster-name}
ECS_ENABLE_TASK_IAM_ROLE=true
ECS_AVAILABLE_LOGGING_DRIVERS='["json-file","awslogs", "none"]'
ECS_CONTAINER_INSTANCE_PROPAGATE_TAGS_FROM=ec2_instance
EOF
```

3- create task definition (be aware of resource allocation, container instances running cannot take more resource than the instance have)

4- deploy service from that task definition (create a container-instance running)

- Be sure it is deployed within the same VPC and subnet

# Troubleshooting

## Check if there are missing attributes:

```bash
ecs-cli check-attributes --task-def {task-definition-arn} --container-instances {container-instance-arn} --cluster {cluster-name}
```
