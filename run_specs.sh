#!/usr/bin/env bash
vagrant up
vagrant provision
vagrant ssh-config > ssh_config
bundle exec rspec spec

