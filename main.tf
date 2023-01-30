resource "google_project" "covid_dev" {
  name = "yampy-covid-dev"
  project_id = "yampy-covid-dev"
}

resource "google_project" "covid_prod" {
  name = "yampy-covid-prod"
  project_id = "yampy-covid-prod"
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