variable "firewall_rule_name" {
    type = string
    default = "allow-inbount-ssh-http-https"
    description = "Name of the firewall rule"
}

variable "source_ips" {
  type = list(string)
  description = "allowed source ip subnet list. (e.g., ['10.0.0.0/24', '192.168.1.0/24'])"
}

variable "destination_ips" {
  type = list(string)
  description = "allowed destination ip subnet list for outbound rules. (e.g., ['10.0.0.0/24', '192.168.1.0/24'])"
  default = []
}
