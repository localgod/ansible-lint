# Ansible-lint (dockerized)

## Description

## Build
    make build

## Run
  docker run --rm -it -v $(pwd):/tmp -w /tmp localgod/ansible-lint ansible-lint playbook.yml
