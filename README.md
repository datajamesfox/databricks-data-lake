## Delta Lake in Databricks

This project utilses Terraform with AWS and Pyspark in Databicks to create a delta lake in S3, and process the data in Databricks.


### Installation
------------
#### Infrastucture

Install Terraform: https://developer.hashicorp.com/terraform/install

Install AWS CLI: https://aws.amazon.com/cli/

Set AWS profile access keys.

#### Scripts

Import .scriptes/Insurance Process.ipynb into Databricks.


### Usage
-----
#### Infrastucture

Update variables in dev.tfvars

From ./terraform run the following:

    terraform init
    terraform fmt
    terraform validate
    terraform plan -var-file="dev/dev.tfvars"
    terraform apply -var-file="dev/dev.tfvars"

#### Scripts

Update variables in config section:

    # Config
    AWS_ACCESS_KEY_ID= "123"
    AWS_SECRET_ACCESS_KEY= "123"
    aws_bucket_name = "s3a://abc/"
    aws_container_name = "bronze/csv/"
    aws_file_name = "insurance_data.csv"

Run all code blocks.

### Tests
-----
TBC


### Continuous Integration
-----
TBC