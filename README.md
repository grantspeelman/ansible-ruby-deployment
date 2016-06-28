# ansible-ruby-deployment

[![Build Status](https://travis-ci.org/grantspeelman/ansible-ruby-deployment.svg?branch=master)](https://travis-ci.org/grantspeelman/ansible-ruby-deployment)

Ansible role to install ruby and prepare for capistrano or mina deployments.
This role is meant to used as a depend role, 
read [Role Dependencies](http://docs.ansible.com/ansible/playbooks_roles.html#role-dependencies)
for more information.

 * user installs bundler
 * /home/{{app_deploy_name}}/.env and included in .bashrc 
 * /etc/logrotate.d/{{app_deploy_name}}
 
## Role variables

Below is a list of default values along with a description of what they do.

```
app_deploy_name: "deploy" # recommended you change this to be named after the app
app_ruby_version: "system" # cannot be changed once installed

app_env:
  DATABASE_URL: "postgresql://localhost/production?pool=5" # please override this with the correct details
```

Valid values for app_ruby_version: `system`, `2.0`, `2.1`, `2.2`, `2.3`
Specific versions are installed using [Brightbox repo](https://www.brightbox.com/docs/ruby/ubuntu/)