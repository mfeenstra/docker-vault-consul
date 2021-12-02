# Vault Server + 2-node Consul cluster (Containers)

- Using docker-compose
- A single instance installation
- Vault server is using a 2-node Consul cluster for backend storage

-----

## Versioning:

-  Docker version 20.10.9, build c2ea9bc
-  docker-compose version 1.29.2, build 5becea4c
-  CentOS Stream release 8
-  Kernel: 4.18.0-348.el8.x86_64 #1 SMP Tue Oct 19 15:14:17 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux

### Packages:

```text
containerd.io.x86_64                              1.4.11-3.1.el8                                @docker-ce
docker-ce-cli.x86_64                              1:20.10.9-3.el8                               @docker-ce
docker-ce-rootless-extras.x86_64                  20.10.9-3.el8                                 @docker-ce
docker-ce.x86_64                                  3:20.10.9-3.el8                               @docker-ce
docker-scan-plugin.x86_64                         0.8.0-3.el8                                   @docker-ce
```

-----

## Instructions

#### To install docker-compose (as root):

```sh
wget -o /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64
chmod 755 /usr/local/bin/docker-compose
```

### 1. Startup

**Interactive (ctrl-c to terminate):**

```sh
docker-compose up
```
**or Detatched:**

```sh
docker-compose up -d
```

### 2.  Initialization steps

***Make note of the root token and secure the secret in a secure place***

```sh
cd vault_scripts
00_init.sh
01_unseal.sh
02.1_enable_audit_log.sh
02_login.sh
03_enable_secrets.sh
04_static_secret.sh
05_get_secret.sh
```

### 3. (optional) Shutdown (or ctrl-c if interactive)

```sh
docker-compose down
```

-----

## User Interfaces

**Navigate your browser to:**

### Vault UI

`http://docker-engine01:8200/ui`

### Consul UI

`http://docker-engine01:8500/ui`

-----

Licensed under GPLv3, all rights reserved

matt.a.feenstra@gmail.com
