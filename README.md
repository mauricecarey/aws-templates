# aws-templates
Some useful scripts and templates for working with AWS.

## full-stack.json
This is a Cloud Formation template originally based on https://github.com/awslabs/service-discovery-ecs-consul/blob/master/service-discovery-blog-template but I've added automated VPC, subnet, a postgres db, a redis service, and registration of the db with consul.

Basically, if you want to deploy a Dockerized app on ECS this will get you started quickly.

Find more info on the original at https://aws.amazon.com/blogs/compute/service-discovery-via-consul-with-amazon-ecs/

## vpc-subnet-setup.json
This is a Cloud Formation template that creates a VPC, subnet, and related.

## redis-task.json
An simple example of a redis task definition for ECS.

## register-postgres.sh
A bash script to register a postgres server as a service with consul. Takes two parameters. First the postgres host name, then the postgres port.


## AWS Issues
* If the nginx password is not set properly by the ConsulInstance setup scripts run the folowing on the instance:

        sudo htpasswd -cb /etc/nginx/.htpasswd admin <password> && sudo /usr/sbin/nginx -s reload

* The Agent Version listed on the Cluster page under the ECS Instances tab should be 1.7.1 or greater. This seams to result in failure to deploy some docker images. Request the agent is updated by clicking through to the agent page and clicking the Update Agent button. You'll want to update the AMI used in the cloud formation script based on the [AMI images for agent versions](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_agent_versions.html).
