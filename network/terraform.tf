terraform {
  backend "local" {
  }
}

## MEMO: Local Variables
locals {
  context = yamldecode(file(var.config_file)).context
  config  = yamldecode(templatefile(var.config_file, local.context))
}



## MEMO: Providers
provider "aws" {
  region = "ap-northeast-2"
}
