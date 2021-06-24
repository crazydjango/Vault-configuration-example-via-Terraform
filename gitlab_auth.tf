resource "vault_jwt_auth_backend" "gitlab" {
  description = "JWT auth backend for gitlab integration"
  path = "jwt"
  type = "jwt"
  bound_issuer = "git.example.com"
  jwks_url = "https://git.example.com/-/jwks"
}


resource "vault_jwt_auth_backend_role" "devops" {
  backend = vault_jwt_auth_backend.gitlab.path
  role_name = "devops"
  role_type = "jwt"
  token_policies = [vault_policy.devops.name]
  token_explicit_max_ttl = 60
  user_claim = "user_email"
  bound_claims_type = "glob"
  bound_claims = {
    "project_id" = "1234" # Project ID in gitlab
  }
}
