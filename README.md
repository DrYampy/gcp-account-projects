# gcp-account-projects
Repo to control GCP Projects

Requires the following installed prior to use: Terraform, GCloud SDK

As of the last push, deploys the `covid-dev` and `covid-prod` projects to target GCP account.

To initialize remote backend: `scripts/init.sh`

To validate the template: `scripts/validate.sh`

To plan the template: `scripts/plan.sh`

To apply the template: `scripts/apply.sh`

To destroy the template: `scripts/destroy.sh`
