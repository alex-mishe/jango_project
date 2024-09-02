terraform {
  backend "s3" {
    bucket         = "state-task-aug"
    key            = "environments/prod/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "tableforlockstate"
    encrypt        = true           
  }
}