resource "vault_auth_backend" "default" {
  type = "userpass"
}

# Generally, in the real world I would configure ldap auth and mapping to ldap_groups
# Especially it is usefull when we need to provide additional permissions to one of the user
# for example to be admin among developers who will write/update secrets for the team
/*
resource "vault_ldap_auth_backend" "ldap" {
    path        = "ldap"
    url         = "ldaps://dc-01.example.org"
    userdn      = "OU=Users,OU=Accounts,DC=example,DC=org"
    userattr    = "sAMAccountName"
    upndomain   = "EXAMPLE.ORG"
    discoverdn  = false
    groupdn     = "OU=Groups,DC=example,DC=org"
    groupfilter = "(&(objectClass=group)(member:1.2.840.113556.1.4.1941:={{.UserDN}}))"
}
resource "vault_ldap_auth_backend_group" "group" {
    groupname = "developers"
    policies  = ["default", "developers"]
    backend   = vault_ldap_auth_backend.ldap.path
}
resource "vault_ldap_auth_backend_user" "user" {
    username = "developer-admin"
    policies = ["default", "developers", "developer-admin"]
    backend  = vault_ldap_auth_backend.ldap.path
}
*/
