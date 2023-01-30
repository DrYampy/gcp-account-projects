resource "google_project" "covid_dev" {
  name = "yampy-covid-dev"
  project_id = "yampy-covid-dev"
}

resource "google_project" "covid_prod" {
  name = "yampy-covid-prod"
  project_id = "yampy-covid-prod"
}