# gcp-account-projects
Repo to control GCP Projects

Requires the following installed prior to use: Terraform, GCloud SDK

As of the last push, deploys the `yampy-covid-dev` and `yampy-covid-prod` projects to target GCP account, requires a remote-backend in GCP project `yampy-main` and an account with owner permissions (i.e. your own) with GCP access.

To initialize via remote backend: `scripts/init.sh`

To validate the template: `scripts/validate.sh`

To plan the template: `scripts/plan.sh`

To apply the template: `scripts/apply.sh`

To destroy the template: `scripts/destroy.sh`
