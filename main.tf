terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.38.0"
    }
  }
}

provider "google" {
    project = "terraform-demo-430720"
    region  = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "terraform-demo-430720-terra-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}