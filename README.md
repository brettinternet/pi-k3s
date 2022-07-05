# pi k3s

Kubernetes via Rancher's K3s for a cluster of Raspberry Pis running the headless Debian Pi OS.

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
