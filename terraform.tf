terraform {
  required_providers {
    google = {
      version = "5.29.1"
    }
  }
}

provider "google" {
  project     = var.project_name
  credentials = "./environments/prod/prod.json"
}

provider "google-beta" {
  project     = var.project_name
  credentials = "./environments/prod/prod.json"
}
