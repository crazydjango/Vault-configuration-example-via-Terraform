resource "vault_policy" "secops_policy" {
  name = "secops"
  policy = <<EOT
  path "secops/*"
  {
    capabilities = ["read", "list"]
  }

  path "*" {
    capabilities = ["list"]
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
