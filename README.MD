terraform plan
# Update changes
terraform apply
# format
terraform fmt

# set google credentials
export GOOGLE_CREDENTIALS = 'path_to_google_credentials_json_file'

# See google credentials
echo $GOOGLE_CREDENTIALS

# delete google credentials
unset GOOGLE_CREDENTIALS
