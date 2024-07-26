resource "hcloud_firewall" "firewall" {
  for_each = { for idx, fw in var.firewalls : idx => fw }

  name = each.value.name

  dynamic "rule" {
    for_each = flatten([
      for r in each.value.rules : [
        for p in r.ports : {
          direction = r.direction
          source_ips = r.source_ips
          destination_ips = r.destination_ips
          protocol = r.protocol
          port = p
        }
      ]
    ])
    content {
      direction        = rule.value.direction
      source_ips       = rule.value.source_ips
      destination_ips  = rule.value.destination_ips
      protocol         = rule.value.protocol
      port             = rule.value.port
    }
  }
}
