resource "vault_policy" "devops_policy" {
  name = "devops"
  policy = <<EOT
  path "devops/*"
  {
    capabilities = ["read", "list"]
  }
EOT
}

resource "vault_policy" "devops_admin_policy" {
  name = "devops-admin"
  policy = <<EOT
  path "devops/*"
  {
    capabilities = ["create", "update", "delete", "read", "list"]
  }
EOT
}
