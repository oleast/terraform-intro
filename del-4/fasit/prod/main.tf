
# Fyll ut meg
provider "google" {
  project = "bekk-oppdrift"
  region  = "europe-west1"
}

locals {
  environment = "prod"
}

module "mymodule" {
  source      = "../template"
  environment = local.environment
}
