variable "firewalls" {
  description = "List of firewall configurations"
  type = list(object({
    name = string
    rules = list(object({
      direction = string  # "in" or "out"
      source_ips = list(string)
      destination_ips = list(string)
      ports = list(string)  # List of individual ports
      protocol = string  # "tcp", "udp"
    }))
  }))
}