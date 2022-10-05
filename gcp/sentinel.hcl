#FINOPS 1.0 : Ensure the mandatory billing labels exist in a project
policy "enforce-mandatory-labels" {
    enforcement_level = "hard-mandatory"
}

module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfplan-functions/tfplan-functions.sentinel"
}
 
#CIS 3.1: Networking | Ensure the default network does not exist in a project
policy "gcp-cis-3.1-networking-deny-default-network-in-project" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/networking/gcp-cis-3.1-networking-deny-default-network-in-project/gcp-cis-3.1-networking-deny-default-network-in-project.sentinel"
  enforcement_level = "advisory"
}
    
CIS 3.6: Networking | Ensure that SSH access is restricted from the internet
policy "gcp-cis-3.6-networking-ssh-is-restricted-from-internet" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/networking/gcp-cis-3.6-networking-ssh-is-restricted-from-internet/gcp-cis-3.6-networking-ssh-is-restricted-from-internet.sentinel"
  enforcement_level = "advisory"
}    
    
# CIS 3.7: Networking | Ensure that RDP access is restricted from the internet
policy "gcp-cis-3.7-networking-rdp-is-restricted-from-internet" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/networking/gcp-cis-3.7-networking-rdp-is-restricted-from-internet/gcp-cis-3.7-networking-rdp-is-restricted-from-internet.sentinel"
  enforcement_level = "advisory"
}

#CIS 4.4: Ensure 'Enable connecting to serial ports' is not enabled for VM Instance   
policy "gcp-cis-4.4-compute-enable-connecting-to-serial-ports-is-not-enabled-for-vm-instance" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/compute/gcp-cis-4.4-compute-enable-connecting-to-serial-ports-is-not-enabled-for-vm-instance/gcp-cis-4.4-compute-enable-connecting-to-serial-ports-is-not-enabled-for-vm-instance.sentinel"
    enforcement_level = "advisory"
}
    
#CIS 4.5: Ensure that IP forwarding is not enabled on Instances
policy "gcp-cis-4.5-compute-ensure-that-ip-forwarding-is-not-enabled-on-instances" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/compute/gcp-cis-4.5-compute-ensure-that-ip-forwarding-is-not-enabled-on-instances/gcp-cis-4.5-compute-ensure-that-ip-forwarding-is-not-enabled-on-instances.sentinel"
    enforcement_level = "advisory"
}
    
    
  
