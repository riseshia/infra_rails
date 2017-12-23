# Infra for rails

## Architecture

- Rails
- Nginx
- Ruby 2.4
- Unicorn

## Used...

- Itamae
- Terraform

## OS

- Ubuntu 16.04

## Usage

### Vagrant

This repository includes Vagrantfile for provision test with itamae.

```bash
vagrant up
```

### Apply Itamae

move into 'itamae',

```bash
bundle exec itamae ssh --vagrant bootstrap.rb -y node.yml
```
