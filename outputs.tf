output "firewall_ids" {
  value = { for idx, fw in hcloud_firewall.firewall : idx => fw.id }
  description = "A map of all created firewall IDs, keyed by their index."
}

output "firewall_labels" {
  value = { for idx, fw in hcloud_firewall.firewall : idx => fw.labels }
  description = "A map of labels assigned to each firewall, keyed by their index."
}

output "firewall_rules" {
  value = { for idx, fw in var.firewalls : idx => fw.rules }
  description = "The list of rules that are applied to each firewall, indexed by firewall."
}

