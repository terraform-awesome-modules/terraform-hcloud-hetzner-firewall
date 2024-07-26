output "firewall_id" {
  value       = hcloud_firewall.firewall[each.key].id
  description = "The ID of the created firewall."
}

output "firewall_labels" {
  value       = hcloud_firewall.firewall[each.key].labels
  description = "The labels assigned to the firewall."
}

output "firewall_rules" {
  value       = hcloud_firewall.firewall[each.key].rules
  description = "The list of rules that are applied to the firewall."
}