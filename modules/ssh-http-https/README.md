# ssh-http-https - Hcloud Firewall Terraform Module

Allows inbound ssh-http-https connections for a server on given Hcloud.

## Usage

``` terraform
module "https" {
  source  = "terraform-awesome-modules/hetzner-firewall/hcloud//modules/ssh-http-https"
  version = "~>0.1.4"

    source_ips = ["0.0.0.0/0"]
}

```

All automatic values for ssh-http-https module is using are available here.

## Requirements

## Providers

## Modules

## Resources

## Inputs