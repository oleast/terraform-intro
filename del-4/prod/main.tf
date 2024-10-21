
# Fyll ut meg
provider "google" {
  project = "bekk-oppdrift"
  region  = "europe-west1"
}

locals {
  foo = "what"
}

module "mymodule" {
  source = "../template"
  foo    = local.foo
}
