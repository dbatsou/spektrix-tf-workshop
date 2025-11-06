// https://www.terraform.io/docs/configuration/variables.html

variable "selected_region" {
  default = "northeurope"
}

variable "resource_group_suffix" {
  default = "dimi"
  description = "Suffix for the resource group name"
}

variable "environments" {
    type = map
    default = {
        "staging"  = "s"
        "live"  = ""
    }
}

variable "domain_prefix" {
    type = map
    default = {
        "staging"  = "s"
        "live"  = ""
    }
}

#retrieve them with 
#az account show --query [id,tenantId]  --output tsv
variable "subscription_id" {
  default = ""
}

variable "tenant_id" {
  default = ""
}