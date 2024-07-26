# https-443 - Hcloud Firewall Terraform Module

Allows inbound https (443) connections for a server on given Hcloud.

## Usage

``` terraform
module "https" {
  source  = "terraform-awesome-modules/hetzner-firewall/hcloud//modules/https-443"
  version = "~>0.1.4"

    source_ips = ["0.0.0.0/0"]
}

```

All automatic values for https-443 module is using are available here.

## Requirements

## Providers

## Modules

## Resources

## Inputs