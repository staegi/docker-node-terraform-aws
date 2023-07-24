# Docker-node-terraform-aws

[![Dockerhub badge](http://dockeri.co/image/jch254/docker-node-terraform-aws)](https://hub.docker.com/r/jch254/docker-node-terraform-aws)

Docker-powered build/deployment environment for Node.js projects on AWS. This Docker image is intended for use with [Bitbucket Pipelines](https://bitbucket.org/product/features/pipelines) and [AWS CodeBuild](https://aws.amazon.com/codebuild).

This image is based on node:20-alpine and has Terraform 1.1.9, the AWS CLI and Yarn installed (see Dockerfile for all other installed utilities).

See [serverless-node-dynamodb-ui](https://github.com/jch254/serverless-node-dynamodb-ui) for an example of this image in action.

Use the [10.x](https://github.com/jch254/docker-node-terraform-aws/tree/10.x) branch/tag for an image running Node v10, the [12.x](https://github.com/jch254/docker-node-terraform-aws/tree/12.x) branch/tag for an image running Node v12, the [14.x](https://github.com/jch254/docker-node-terraform-aws/tree/14.x) branch/tag for an image running Node v14, the [16.x](https://github.com/jch254/docker-node-terraform-aws/tree/16.x) branch/tag for an image running Node v16 and the [18.x](https://github.com/jch254/docker-node-terraform-aws/tree/18.x) branch/tag for an image running Node v18.

## Build & Push the image:

Build the version on your local machine but with the parameter `--platform=linux/amd64` to avoid problems, e.g. on M1 MacBooks:

    docker build --platform=linux/amd64 -t tomcat2111/docker-node-terraform-aws:latest .
    docker push tomcat2111/docker-node-terraform-aws:latest
