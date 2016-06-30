#!/usr/bin/env bash
vagrant up && vagrant provision
vagrant ssh-config > ssh_config
TARGET_VAGRANT="trusty64" bundle exec rspec spec
TARGET_VAGRANT="xenial64" bundle exec rspec spec

