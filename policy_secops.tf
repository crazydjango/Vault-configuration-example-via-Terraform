resource "vault_policy" "secops_policy" {
  name = "secops"
  policy = <<EOT
  path "secops/*"
  {
    capabilities = ["read", "list"]
  }
EOT
}

resource "vault_policy" "secops_admin_policy" {
  name = "secops-admin"
  policy = <<EOT
  path "secops/*"
  {
    capabilities = ["create", "update", "delete", "read", "list"]
  }
EOT
}
