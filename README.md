# Kubernates on AMAZON EKS using terraform

Creating a Kubernates cluster on Amazon EKS using Terraform. 

We've used vpc and k8s modules from terraform modules.


## Run Amazon CLI inside a docker machine

For convenience (escaping windows command line :') we mount our workspace to a docker environement  (aws cli image) containing all we need.

```
> docker run -it --rm -v ${PWD}:/work -w /work --entrypoint /bin/sh amazon/aws-cli:2.0.43

#some utilities:
> yum install -y jq gzip nano tar git unzip wget

```

## Login to Amazon

```
# Create an access key from your aws console to continue
# configure your Aws cli:
> aws configure

#enter your credentials
Default output format: json
```

## Terraform

```
# installing Terraform

> curl -o /tmp/terraform.zip -LO https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_linux_amd64.zip
> unzip /tmp/terraform.zip
> chmod +x terraform && mv terraform /usr/local/bin/
> terraform
```

## Build the infrastructure 

```
> terraform init
> terraform validate
> terraform plan -out myplan.tfplan
> terraform apply "myplan.tfplan"
```

## get kubectl and control the cluster 

```
# get the EKS config (PS: change to your region)
> aws eks update-kubeconfig --name my_cluster_001 --region us-east-2

# Get kubectl
> curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
> chmod +x ./kubectl
> mv ./kubectl /usr/local/bin/kubectl

# now you have control over your cluster using kubectl enjoy :)
> kubectl get nodes
> kubectl get deploy
> kubectl get pods
> kubectl get svc


```

## Destroy the infrastracture

```
> terraform destroy
```