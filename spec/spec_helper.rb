require 'serverspec'
require 'net/ssh'
require 'tempfile'

if ENV['SPEC_BACKEND_EXEC']
  set :backend, :exec
else
  set :backend, :ssh

  options = Net::SSH::Config.for(ENV['TARGET_VAGRANT'] || 'default', ['ssh_config'])

  options[:user] ||= Etc.getlogin

  set :host,        options[:host_name]
  set :ssh_options, options
end

# Disable sudo
# set :disable_sudo, true

# Set environment variables
# set :env, :LANG => 'C', :LC_MESSAGES => 'C' 

# Set PATH
# set :path, '/sbin:/usr/local/sbin:$PATH'
