# ansible-ruby-deployment
Ansible role to prepare for capistrano or mina deployments

 * user installs bundler
 * /home/{{app_deploy_name}}/.env and included in .bashrc 
 * /etc/logrotate.d/{{app_deploy_name}}
 
## Role variables

Below is a list of default values along with a description of what they do.

```
app_deploy_name: "deploy" # recommended you change this to be named after the app

app_env:
  DATABASE_URL: "postgresql://localhost/production?pool=5" # please override this with the correct details
```