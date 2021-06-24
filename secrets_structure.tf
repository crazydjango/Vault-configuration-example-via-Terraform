resource "vault_mount" "developers" {
  path        = "developers"
  type        = "kv-v2"
  description = "KV2 Secrets Engine for Developers"
}

resource "vault_mount" "devops" {
  path        = "devops"
  type        = "kv-v2"
  description = "KV2 Secrets Engine for DevOps team"
}

resource "vault_mount" "sysops" {
  path        = "sysops"
  type        = "kv-v2"
  description = "KV2 Secrets Engine for SysOps team"
}

resource "vault_mount" "secops" {
  path        = "secops"
  type        = "kv-v2"
  description = "KV2 Secrets Engine for Security Team"
}

resource "vault_mount" "secops-notes" {
  path        = "secret/secops-notes"
  type        = "kv-v2"
  description = "KV2 Secrets Engine for Security Team notes"
}


resource "vault_generic_secret" "developer_sample_data" {
  path = "${vault_mount.developers.path}/test_secret"

  data_json = <<EOT
  {
    "username": "foo",
    "password": "bar"
  }
EOT
}
