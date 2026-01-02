terraform {

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=5.0"
    }
  }
}
provider "google" {
  project = "qwiklabs-gcp-03-6dd9f69cd0dc"
  region  = "us-east4"
  zone    = "us-east4-c"
}

resource "google_compute_instance" "myvm" {
  name         = "myvm"
  machine_type = "e2-micro"
  zone         = "us-east4-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }

  }
  network_interface {
    network = "default"
    access_config {}
  }
}

resource "google_storage_bucket" "mybucket" {
  name          = "mybucket2396"
  location      = "US"
  force_destroy = true
}
