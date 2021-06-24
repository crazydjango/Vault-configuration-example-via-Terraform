provider "vault" {
  //Credentials are set via environmental variables $VAULT_ADDR
  version = "~> 2.21"
}

terraform {
  required_version = "~> 0.13.6"
  /* Ussually this would be recommended backend for tfstate
  backend "s3" {
    bucket         = "company.tfstate"
    key            = "tfstate/vault_prod.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "company.tfstate"
    profile        = "terraform-tfstate"
  }
  */
  # Istead local tfstate is used, no configuration is needed
}
