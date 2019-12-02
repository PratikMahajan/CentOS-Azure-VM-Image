# CentOS-Azure-VM-Image


## Getting Credentials from Azure
Use the command below. \
Every time you run this command, you'll create a new service principle. \
Make sure to delete it from AzureActiveDirectory->Enterprise Application-> All Applications
```shell script
az ad sp create-for-rbac --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"
```

## Creating Resource Group 
```shell script
 az group create --location <LOCATION> --name <NAME> --subscription <SUBSCRIPTION_ID>

```