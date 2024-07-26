variable "firewall_rule_name" {
    type = string
    default = "allow-inbount-https-443"
    description = "Name of the firewall rule"
}

variable "direction" {
    type = string
    default = "in"
    description = "inbound or outbound"
}

variable "protocol" {
    type = string
    default = "tcp"
    description = "tcp, udp or icmp"
}

variable "ports" {
    type = list(string)
    default = ["443"]
    description = "ssh port"
}
