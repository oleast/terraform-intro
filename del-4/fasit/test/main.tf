# Fyll ut meg
provider "google" {
  project = "halvveis-bistro"
  region  = "europe-west1"
}

locals {
  environment = "test"
}

module "mymodule" {
  source      = "../template"
  environment = local.environment
}
