In order to launch an ec2 instance:

1- create cluster
2- create instance

- add ec2IAM role
- add this user data:
```bash
#!/bin/bash
# Configure the ECS cluster
echo ECS_CLUSTER={cluster-name} >> /etc/ecs/ecs.config

# Enable IAM roles for tasks
echo ECS_ENABLE_TASK_IAM_ROLE=true >> /etc/ecs/ecs.config
```
3- create task definition (be aware of resource allocation)
4- deploy service from that task definition (create a container-instance running)

