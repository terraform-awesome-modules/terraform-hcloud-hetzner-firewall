variable "firewall_rule_name" {
    type = string
    default = "allow-inbount-ssh"
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
    default = ["22"]
    description = "ssh port"
}
