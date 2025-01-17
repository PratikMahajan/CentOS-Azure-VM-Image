# CentOS-Azure-VM-Image

## Installing Packer
Run the `packersetup.sh` script in `scripts` folder as root
```shell script
sudo bash /scripts/packersetup.sh
```
Validate the installation by running 
```shell script
packer --version
```

## Getting Credentials from Azure
Use the command below. \
Every time you run this command, you'll create a new service principle. \
Make sure to delete it (if not needed) from AzureActiveDirectory->Enterprise Application-> All Applications
```shell script
az ad sp create-for-rbac --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"
```

## Creating Resource Group 
If you dont have a resource group, create one using the command below.
```shell script
 az group create --location <LOCATION> --name <NAME> --subscription <SUBSCRIPTION_ID>

```

## Validate Template
```
packer validate -var-file=<variables-file-name>.json centos.json
```

## Build AMI

```
packer build \
    -var-file=variables.json \
    centos.json
```

## Secure Copy for Web App Dependencies
NOT AT ALL RECOMMENDED
```
scp -r ~/.ssh/key/generated /web/application/folder/to be/copied centos@publicIP:/new/folder/created
```