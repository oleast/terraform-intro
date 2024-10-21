provider "google" {
  project = "bekk-oppdrift"
  region  = "europe-west1"
}

resource "google_storage_bucket" "bucket" {
  name     = "oppdrift-helloworld"
  location = "EU"
}

resource "google_storage_bucket_object" "archive" {
  name   = "index.zip"
  bucket = google_storage_bucket.bucket.name
  source = "./index.zip"
}
