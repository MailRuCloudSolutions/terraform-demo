# Terraform Demo on Mail.Ru Cloud Infra

This is just a quickstart for using Terraform on OpenStack-based cloud of [Mail.Ru Cloud Solutions](https://mcs.mail.ru/). It performs the following actions:

1. Create network and subnet
2. Create router
3. Create keypair
4. Create security group
5. Create VM instance with non-ephemeral disk
6. Apply cloud config which creates a new user and installs nginx 
7. Assign Floating IP to the instance
8. Execute bootstrap scrpits during instance provisioning over ssh

Optionally, you can enable cloud config by uncommenting corresponding line in the main.tf 


## File structure
| Name | Description |
|------|-------------|
README.md | This file, obviously
demo_rsa, demo_rsa.pub | SSH keypair, only to be used for this demonstration
terraform.tf | The terraform manifest with all defined resources
variables.tf | Variables that you can change or set default values
terraform-openrc.sh | should be run initially to setup username, tenant and password
terraform.tfstate, terraform.tfstate.backup | tfstate and tfstate.backup so that terraform can keep track on changes


## How to use

1. Make sure you have installed [Terraform](https://www.terraform.io/)
2. Get your OpenStack API credentials by requesting them at [https://help.mail.ru/mcs/support]()https://help.mail.ru/mcs/support)
3. Run the terraform-openrc.sh script. It will ask about username, tenant and password.
4. Then run "terraform plan". If that fails, make sure you've used the correct credentials (run terraform-openrc.sh again)
5. Last, run "terraform apply" to install all the infrastructure, described in the terraform.tf

```bash
$ ./terraform-openrc.sh
[...]
$ terraform init (if it is the first time you run terraform)
$ terraform plan
$ terraform apply
```

You should now have a fully working environment with everything described in the beginning of this README.
