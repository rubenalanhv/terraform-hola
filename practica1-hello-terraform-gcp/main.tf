terraform {
  required_version = ">= 1.0.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.0"
    }
  }
}

provider "google" {
  project = "qwiklabs-gcp-00-e1f34a0cd62c"
  region  = "us-central1"
}

resource "google_storage_bucket" "bucket_ruben" {
  name                        = "bucket-ruben-terraform-001"
  location                    = "US"
  uniform_bucket_level_access = true
}