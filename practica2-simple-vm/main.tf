terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=5.0.0"
    }
  }
}

provider "google" {
  project = "qwiklabs-gcp-02-3e3141c159e6"
  region  = "us-west1"
}

resource "google_compute_instance" "my-first-vm" {
  name         = "my-first-vm"
  machine_type = "e2-micro"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }

  }
}