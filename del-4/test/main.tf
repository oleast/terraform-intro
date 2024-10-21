# Fyll ut meg
provider "google" {
  project = "bekk-oppdrift"
  region  = "europe-west1"
}

locals {
  foo = "baz"
}

module "mymodule" {
  source = "../template"
  foo    = local.foo
}
