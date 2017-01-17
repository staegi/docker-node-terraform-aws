FROM mhart/alpine-node:latest

RUN apk add --update bash wget unzip python ca-certificates

RUN wget https://releases.hashicorp.com/terraform/0.8.4/terraform_0.8.4_linux_amd64.zip
RUN unzip terraform_0.8.4_linux_amd64.zip
RUN mv terraform /usr/bin/

RUN wget https://s3.amazonaws.com/aws-cli/awscli-bundle.zip
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
RUN aws configure set preview.cloudfront true

RUN npm install -g yarn@0.19.1

ENTRYPOINT ["/bin/bash", "-c"]
