# ansible-ruby-deployment
Ansible role to prepare for capistrano or mina deployments

 * user installs bundler
 * /home/{{app_deploy_name}}/.env and included in .bashrc 
 * /home/{{app_deploy_name}}/shared/config/database.yml
 * /etc/logrotate.d/{{app_deploy_name}}
 
## Role variables

Below is a list of default values along with a description of what they do.

```

app_deploy_name: "deploy"

app_env:
  TEST: "1"
  
# you need to set
app_db_adapter: 

```