module "firewall" {
  source  = "terraform-awesome-modules/hetzner-firewall/hcloud//modules/ssh"
  version = "../../"

  firewalls = [
    {
      name = var.firewall_rule_name
      rules = [
        {
          direction = var.direction
          source_ips = ["0.0.0.0/0"]
          destination_ips = []
          ports = var.ports
          protocol = "tcp"
        }
      ]
    }
  ]
}