export GOOGLE_CLOUD_KEYFILE_JSON="/Users/Yampy/.gcp_service_accounts/terraform-yamptastic-init-ee82022b2c1f.json"
sh ../tool-terraform/scripts/run.sh init
sh ../tool-terraform/scripts/run.sh fmt
sh ../tool-terraform/scripts/run.sh validate
sh ../tool-terraform/scripts/run.sh apply
