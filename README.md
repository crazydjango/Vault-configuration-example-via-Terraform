# Vault-configuration-example-via-Terraform-
Terraform example for dev Vault configuration

## Description
According to the task I've created Vault configuration as follows:
`main` - Just a provider information and tfstate comment
`auth_backend` - Enabling userpass auth method for the task example
`policy_admin and policy_default` - Default policies for Vault environment, that creates policy for the Vault admin user
and Default policy for any other Vault user.
`policy_<team_name>` - Policy for specific team that will use Vault. Each team has dedicated policy for admin user, who will manage secrets for that team.
`secrets_structure` - Example configuration for paths where teams will store their KV secrets.
`users` - This configuration is only for test to be able to login in the Vault right after configuration was applied.
