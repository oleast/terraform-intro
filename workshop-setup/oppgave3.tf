provider "google" {
  project = "halvveis-bistro"
  region  = "europe-west1"
}

resource "google_storage_bucket" "bucket" {
  name     = "halvbistro-helloworld"
  location = "EU"
}

resource "google_storage_bucket_object" "archive" {
  name   = "index.zip"
  bucket = google_storage_bucket.bucket.name
  source = "./index.zip"
}
