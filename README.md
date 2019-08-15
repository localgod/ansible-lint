# Ansible-lint (dockerized)

## Description

This is a dockerized version of the [ansible-lint](https://github.com/ansible/ansible-lint) tool. Nothing more nothing less.

## Build
  make build

## Run
  docker run --rm -it -v $(pwd):/tmp -w /tmp localgod/ansible-lint ansible-lint playbook.yml
