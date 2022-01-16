terraform {
  /*
  cloud {
    organization = "yumoOrg"

    workspaces {
      name = "provisioners"
    }
  }*/

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}