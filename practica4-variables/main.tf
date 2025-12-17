terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=5.0"
    }
  }
}
provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "this" {
  name                        = var.bucket_name
  location                    = var.region
  uniform_bucket_level_access = true

  force_destroy = true
}

