variable "bds_bds_instance_patches_lookup" {
  description = <<EOT
Map of bds_bds_instance_patches_lookup, attributes below
Required:
    - bds_instance_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    bds_instance_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

