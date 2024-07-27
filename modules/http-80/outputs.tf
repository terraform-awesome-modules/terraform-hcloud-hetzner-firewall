output "firewall_ids" {
  value = module.firewall.firewall_ids[0]
  description = "A map of all created firewall IDs, keyed by their index."
}

output "firewall_labels" {
  value = module.firewall.firewall_labels[0]
  description = "A map of labels assigned to each firewall, keyed by their index."
}

output "firewall_rules" {
  value = module.firewall.firewall_rules[0]
  description = "The list of rules that are applied to each firewall, indexed by firewall."
}

