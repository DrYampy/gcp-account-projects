terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

# Initial Manually Created Project
provider "google" {
  project = "covid-dev"
  region  = "us-west1"
}