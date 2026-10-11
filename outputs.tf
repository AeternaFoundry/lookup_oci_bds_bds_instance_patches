output "bds_bds_instance_patches_lookup_id" {
  description = "Map of id values across all bds_bds_instance_patches_lookup, keyed the same as var.bds_bds_instance_patches_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_bds_bds_instance_patches.bds_bds_instance_patches_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bds_bds_instance_patches_lookup_bds_instance_id" {
  description = "Map of bds_instance_id values across all bds_bds_instance_patches_lookup, keyed the same as var.bds_bds_instance_patches_lookup except keys with no bds_instance_id are omitted"
  value       = { for k, v in data.oci_bds_bds_instance_patches.bds_bds_instance_patches_lookup : k => v.bds_instance_id if v.bds_instance_id != null && length(v.bds_instance_id) > 0 }
}
output "bds_bds_instance_patches_lookup_filter" {
  description = "Map of filter values across all bds_bds_instance_patches_lookup, keyed the same as var.bds_bds_instance_patches_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_bds_bds_instance_patches.bds_bds_instance_patches_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "bds_bds_instance_patches_lookup_patches" {
  description = "Map of patches values across all bds_bds_instance_patches_lookup, keyed the same as var.bds_bds_instance_patches_lookup except keys with no patches are omitted"
  value       = { for k, v in data.oci_bds_bds_instance_patches.bds_bds_instance_patches_lookup : k => v.patches if v.patches != null && length(v.patches) > 0 }
}

