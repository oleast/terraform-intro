locals {
  function_name = "oles-vidunderlige-funksjon"
}

resource "google_cloudfunctions_function" "function" {
  name    = "${local.function_name}-${var.environment}"
  runtime = "nodejs16"

  available_memory_mb   = 128
  source_archive_bucket = data.google_storage_bucket.hello.name
  source_archive_object = data.google_storage_bucket_object.hello_source.name
  trigger_http          = true
  entry_point           = "helloHttp"
}

data "google_storage_bucket" "hello" {
  name = "oppdrift-helloworld"
}

data "google_storage_bucket_object" "hello_source" {
  bucket = data.google_storage_bucket.hello.name
  name   = "index.zip"
}
