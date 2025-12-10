terraform {
    backend "gcs"{
bucket = "backend-ruben-27213"
    } 
    
}
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "qwiklabs-gcp-03-75b9aadb30c8"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_storage_bucket" "mybucket" {
  name          = "ruben-bucket-demo-01"
  location      = "US"
  force_destroy = "true"
}

resource "random_id" "rand" {
  byte_length = 4
}