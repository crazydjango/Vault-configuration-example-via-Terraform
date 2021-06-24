resource "vault_policy" "developers_policy" {
  name = "developers"
  policy = <<EOT
  path "developers/*"
  {
    capabilities = ["read", "list"]
  }
EOT
}

resource "vault_policy" "developers_admin_policy" {
  name = "developer-admin"
  policy = <<EOT
  path "developers/*"
  {
    capabilities = ["create", "update", "delete", "read", "list"]
  }
EOT
}
