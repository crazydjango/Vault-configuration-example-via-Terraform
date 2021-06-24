#Only for testing purposeds

resource "vault_generic_endpoint" "developer1" {
  depends_on           = [vault_auth_backend.default]
  path                 = "auth/userpass/users/developer1"
  ignore_absent_fields = true

  data_json = <<EOT
{
  "policies": ["developers","default"],
  "password": "123456"
}
EOT
}

resource "vault_generic_endpoint" "developer-admin" {
  depends_on           = [vault_auth_backend.default]
  path                 = "auth/userpass/users/developer-admin"
  ignore_absent_fields = true

  data_json = <<EOT
{
  "policies": ["developer-admin","default"],
  "password": "657489"
}
EOT
}

resource "vault_generic_endpoint" "secops1" {
  depends_on           = [vault_auth_backend.default]
  path                 = "auth/userpass/users/secops1"
  ignore_absent_fields = true

  data_json = <<EOT
{
  "policies": ["secops","default"],
  "password": "654321"
}
EOT
}
