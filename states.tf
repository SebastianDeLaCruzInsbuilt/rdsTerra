terraform{
    backend "s3" {
        bucket = "states-rds-pipeline-prod3828"
        region = "us-east-1"
        key    = "terraform.tfstate"
    }
}

provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}
