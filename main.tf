data "google_billing_account" "acct" {
  display_name = "main"
  open         = true
}

resource "google_project" "covid_dev" {
  name = "yampy-covid-dev"
  project_id = "yampy-covid-dev"
  billing_account = data.google_billing_account.acct.id
}

resource "google_project" "covid_prod" {
  name = "yampy-covid-prod"
  project_id = "yampy-covid-prod"
  billing_account = data.google_billing_account.acct.id
}

resource "google_service_account" "covid_dev_sa" {
  account_id   = "covid-dev-sa"
  display_name = "Service Account for yampy-covid-dev GCP project"
  project = google_project.covid_dev.name
}

resource "google_service_account" "covid_prod_sa" {
  account_id   = "covid-prod-sa"
  display_name = "Service Account for yampy-covid-prod GCP project"
  project = google_project.covid_prod.name
}

resource "google_storage_bucket" "covid_dev_storage" {
  name = "covid-dev-storage-tf-state"
  project = google_project.covid_dev.name
  location      = "US-WEST1"
  force_destroy = true
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "covid_prod_storage" {
  name = "covid-prod-storage-tf-state"
  project = google_project.covid_prod.name
  location      = "US-WEST1"
  force_destroy = true
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}