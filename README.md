Make sure that you have client secret with correct permission to create a VM image is available under the resourcegroup you are creating

packer build  -var 'az_client_secret=value'   -var 'aws_sub_kid=value'    ubuntu.json 

