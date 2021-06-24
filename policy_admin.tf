resource "vault_policy" "admin_policy" {
  name   = "admin"
  policy = <<EOT

path "/consul/*" {
  capabilities = ["read", "list"]
}

path "*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "auth/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update, and delete auth methods
path "sys/auth/*"
{
  capabilities = ["create", "update", "delete", "read", "list", "sudo"]
}

# List auth methods
path "sys/auth"
{
  capabilities = ["read"]
}

# To list policies
path "sys/policy"
{
  capabilities = ["read"]
}

# Create and manage ACL policies via CLI
path "sys/policy/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create and manage ACL policies via API & UI
path "sys/policies/acl/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}


# List, create, update, and delete key/value secrets
path "secret/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Manage and manage secret engines broadly across Vault.
path "sys/mounts/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Read health checks
path "sys/health"
{
  capabilities = ["read", "sudo"]
}

# To manage capabilities
path "sys/capabilities"
{
  capabilities = ["create", "update"]
}

# To manage capabilities
path "sys/capabilities-self"
{
  capabilities = ["create", "update"]
}

# Additional paths from secrets_structure.tf
path "developers/*"
{
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "devops/*"
{
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "sysops/*"
{
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "secops/*"
{
  capabilities = ["create", "read", "update", "delete", "list"]
}


EOT
}
