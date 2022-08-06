# pi k3s

Kubernetes via Rancher's K3s for a cluster of Raspberry Pis running the headless Debian Pi OS.

This is a proof of concept for my homelab.

## Features

- Rancher K3s
- Traefik ingress

Istio [support for Arm64 is arriving in `v1.15`](https://github.com/istio/istio/issues/26652).

## Setup

Setup dependencies and inventory:

```sh
make setup
```

Then, edit hosts and vars in `inventory.yml`.

Install and deploy manifests:

```sh
ansible-playbook setup.yml
```

Updated manifests:

```sh
ansible-playbook deploy.yml
```
