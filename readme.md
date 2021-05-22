# Terraform AWS Boilerplate(WIP)

for me

## Create Bucket

```bash
$ aws s3api create-bucket --cli-input-json s3-create-bucket.json
```

## Initialize

```bash
$ cd /develop
$ terraform init -backend-config=dev.tfvars
```

## Plan

```bash
$ terraform plan -var-file=dev.tfvars
```
