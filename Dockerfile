FROM ubuntu:latest
RUN apt update -y \
&& apt install curl unzip -y \
&& curl -fsSL https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_linux_amd64.zip -o terraform_dir \
&& unzip terraform_dir \
&& mv terraform /usr/bin/terraform
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
