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
    default = ["22","80","443"]
    description = "ssh port"
}
