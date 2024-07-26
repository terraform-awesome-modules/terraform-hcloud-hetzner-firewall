module "firewall" {
  source  = "terraform-awesome-modules/hetzner-firewall/hcloud"
  version = "0.1.0"

  firewalls = [
    {
      name = "web-server-firewall"
      rules = [
        {
          direction = "in"
          source_ips = ["0.0.0.0/0"]
          destination_ips = []
          ports = ["22", "80", "443"]
          protocol = "tcp"
        }
      ]
    },
    {
      name = "app-server-firewall"
      rules = [
        {
          direction = "out"
          source_ips = []
          destination_ips = ["0.0.0.0/0"]
          ports = ["5000", "6000"]
          protocol = "tcp"
        }
      ]
    }
  ]
}