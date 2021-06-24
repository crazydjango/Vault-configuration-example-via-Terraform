resource "vault_policy" "sysops_policy" {
  name = "sysops"
  policy = <<EOT
  path "sysops/*"
  {
    capabilities = ["read", "list"]
  }
EOT
}

resource "vault_policy" "sysops_admin_policy" {
  name = "sysops-admin"
  policy = <<EOT
  path "sysops/*"
  {
    capabilities = ["create", "update", "delete", "read", "list"]
  }
EOT
}
