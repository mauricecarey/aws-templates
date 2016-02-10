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
