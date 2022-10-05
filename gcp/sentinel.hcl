#FINOPS 1.0 : Ensure the mandatory billing labels exist in a project
policy "gcp-finops-1.0-operations-enforce-mandatory-labels" {
    enforcement_level = "hard-mandatory"
}

#CIS 3.1: Networking | Ensure the default network does not exist in a project
policy "gcp-cis-3.1-networking-deny-default-network-in-project" {
  enforcement_level = "advisory"
}
    
#CIS 3.6: Networking | Ensure that SSH access is restricted from the internet
policy "gcp-cis-3.6-networking-ssh-is-restricted-from-internet" {
  enforcement_level = "advisory"
}    
    
# CIS 3.7: Networking | Ensure that RDP access is restricted from the internet
policy "gcp-cis-3.7-networking-rdp-is-restricted-from-internet" {
  enforcement_level = "advisory"
}

#CIS 4.5: Ensure that IP forwarding is not enabled on Instances
policy "gcp-cis-4.5-compute-ensure-that-ip-forwarding-is-not-enabled-on-instances" {
    enforcement_level = "advisory"
}
    
#Ops 1.0 : Deployment | Enforce deployments between the hours of 1 am and 4 am
policy "gcp-org-1.0-organization-enforce-deployment-window" {
    enforcement_level = "advisory"
}
#Ops 2.0 : Deployment | Enforce GCE Machine Instance Types
policy "gcp-ops-2.0-operations-enforce-gce-machine-instance-types" {
    enforcement_level = "advisory"
}

module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfplan-functions/tfplan-functions.sentinel"
}
