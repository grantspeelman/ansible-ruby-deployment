require 'serverspec'
require 'net/ssh'
require 'tempfile'

set :backend, :ssh

options = Net::SSH::Config.for('default', ['ssh_config'])

options[:user] ||= Etc.getlogin

set :host,        options[:host_name]
set :ssh_options, options

# Disable sudo
# set :disable_sudo, true

# Set environment variables
# set :env, :LANG => 'C', :LC_MESSAGES => 'C' 

# Set PATH
# set :path, '/sbin:/usr/local/sbin:$PATH'
