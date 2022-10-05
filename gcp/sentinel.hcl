policy "enforce-mandatory-labels" {
    enforcement_level = "hard-mandatory"
}

module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

policy "gcp-cis-3.7-networking-rdp-is-restricted-from-internet" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/networking/gcp-cis-3.7-networking-rdp-is-restricted-from-internet/gcp-cis-3.7-networking-rdp-is-restricted-from-internet.sentinel"
  enforcement_level = "advisory"
}
