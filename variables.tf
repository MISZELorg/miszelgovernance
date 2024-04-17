# examples
# variable "location" {}
# variable "resource_group_name" {}

variable "top_mg_name" {}
variable "platform_mg_name" {}
variable "lzs_mg_name" {}
variable "decom_mg_name" {}
variable "sandbox_mg_name" {}
variable "audit_mg_name" {}
variable "sharedservices_mg_name" {}
variable "identity_mg_name" {}
variable "management_mg_name" {}
variable "connectivity_mg_name" {}
variable "corp_mg_name" {}
variable "online_mg_name" {}
variable "hybrid_mg_name" {}

variable "sub_audit_id" {}
variable "sub_sandbox_id" {}
variable "sub_alzcorp_id" {}
variable "sub_alzonline_id" {}
variable "sub_alzhybrid_id" {}
variable "sub_sharedservices_id" {}
variable "sub_identity_id" {}
variable "sub_management_id" {}
variable "sub_connectivity_id" {}
variable "sub_management2_id" {}

variable "l2mg_map" {
  type = map(object({
    name     = string
    location = string
  }))
  default = {
    "l2mg1" = {
      name = "l2mg1"
    }
    "l2mg2" = {
      name = "l2mg2"
    }
  }
}