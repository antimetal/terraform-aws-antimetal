terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region
}

resource "aws_cloudformation_stack" "antimetal_role" {
  name         = "AntimetalRole"
  template_url = "https://antimetal-static.s3.amazonaws.com/cloudformation/role_setup.json"

  parameters = {
    RoleName           = var.role_name
    AntimetalPrincipal = var.antimetal_principal
    ExternalID         = var.external_id
    HandshakeID        = var.handshake_id
  }

  capabilities = ["CAPABILITY_NAMED_IAM"]
}
