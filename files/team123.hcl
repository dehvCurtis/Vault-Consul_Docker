path "team123/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}
path "sys/policy/team123" {
  capabilities = ["read"]
}

# Token Creation
path "auth/token/create/team123" {
  capabilities = ["create", "read", "update", "list"]
}


# AppRole Usage
path "auth/approle/role/team123/role-id" {
  policy = "read"
}

path "auth/approle/role/team123/secret-id*" {
  policy = "write"
}

