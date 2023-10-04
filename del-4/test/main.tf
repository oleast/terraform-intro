# Fyll ut meg
provider "google" {
  project = "halvveis-bistro"
  region  = "europe-west1"
}

locals {
  foo = "baz"
}

module "mymodule" {
  source = "../template"
  foo    = local.foo
}
