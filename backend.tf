terraform {
  backend "gcs" {
    credentials = "account-jeevan.json"
    bucket      = "infradev-statefiles" # GCS bucket name to store terraform tfstate
    prefix      = "first-terraform"     # Update to desired prefix name. Prefix name should be unique for each Terraform project having same remote state bucket.

  }
}

