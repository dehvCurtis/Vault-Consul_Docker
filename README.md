# Prometheus-Vault-Docker
Vault/Consul Docker for learning and testing

# Overview

This repository will build a Vault server using Consul backend.

The following containers are included:

    consul
    vault

## Start Consul

Start Consul:
```
$ docker-compose up -d consul
```
Consul UI: http://localhost:8500

Start Vault
```
$ docker-compose up -d vault
```

Vault UI: http://localhost:8200

## Start Vault

Initialize Vault:
```
$ export VAULT_ADDR='http://127.0.0.1:8200'
$ vault operator init -key-shares=3 -key-threshold=2 > /tmp/docker-vault-keys.txt
```
Unseal Vault:
```
$ cat /tmp/docker-vault-keys.txt | grep Key
$ vault operator unseal <token1> 
$ vault operator unseal <token1> 
$ vault operator unseal <token3> 
```
Configure Vault:
```
$ cat /tmp/docker-vault-keys.txt | grep Token
$ vault login <root token>
$ vault secrets enable -path=secret/ kv
```

## Stop Containers
```
$ docker-compose stop
```
