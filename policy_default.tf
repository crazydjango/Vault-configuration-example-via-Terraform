resource "vault_policy" "default_policy" {
  name   = "default"
  policy = <<EOT

path "auth/token/lookup-self" {
    capabilities = ["read"]
}

path "auth/token/renew-self" {
    capabilities = ["update"]
}

path "auth/token/revoke-self" {
    capabilities = ["update"]
}

path "cubbyhole/*" {
    capabilities = ["create", "read", "update", "delete", "list"]
}

path "cubbyhole" {
    capabilities = ["list"]
}

path "sys/capabilities-self" {
    capabilities = ["update"]
}

path "sys/renew" {
    capabilities = ["update"]
}

path "sys/renew/*" {
    capabilities = ["update"]
}

EOT
}
