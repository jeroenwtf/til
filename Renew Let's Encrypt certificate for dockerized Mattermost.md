---
modified: 2025-02-12T12:50:27+01:00
created: 2025-02-11T16:25:23+01:00
tags:
  - mattermost
  - ops
  - lets-encrypt
---

It will expire in three months. To renew it, SSH into the server and access `~/docker`.

Shut the Mattermost server down:

```bash
sudo docker compose -f docker-compose.yml -f docker-compose.nginx.yml down
```


Renew the certificate using `scripts/issue-certificate.sh`.

```bash
sudo bash scripts/issue-certificate.sh -d <your domain> -o ${PWD}/certs
```

Finally, turn it on again:

```bash
sudo docker-compose -f docker-compose.yml -f docker-compose.nginx.yml up -d
```