terraform{
    backend "s3" {
        bucket = "states-rds-pipeline-prod3828"
        region = "us-east-1"
        key    = "terraform.tfstate"
    }
}

provider "aws" {
    region = "us-east-1"
    access_key = "AKIAYBXBCVSSDL2UPX3R"
    secret_key = "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"
}
