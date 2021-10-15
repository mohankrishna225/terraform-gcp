# Specify the GCP Provider
provider "google" {

  credentials = "account.json"
  project     = var.project_id
  region      = var.region

}