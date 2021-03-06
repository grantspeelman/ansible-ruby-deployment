require 'spec_helper'

# describe package('ruby2.3') do
#   it { should be_installed }
# end
#
# describe package('ruby2.3-dev') do
#   it { should be_installed }
# end

# required for mina or capistrano deploys
describe package('git') do
  it { should be_installed }
end

describe user('deploy') do
  it { should exist }
end

describe file('/home/deploy/.env') do
  it { should be_file }
  it { should contain('postgresql://localhost/production?pool=5') }
  it { should be_mode(644) }
end

describe file('/home/deploy/shared/log') do
  it { should be_directory }
  it { should be_mode(755) }
end

unless ENV['SPEC_BACKEND_EXEC']
  describe command('gem --version') do
    let(:sudo_options) { '-u deploy -i' }
    its(:stdout) { should contain('1.') }
  end

  describe command('ruby --version') do
    let(:sudo_options) { '-u deploy -i' }
    its(:stdout) { should contain('ruby') }
  end

  describe command('bundle --version') do
    let(:sudo_options) { '-u deploy -i' }
    its(:stdout) { should contain('Bundler version 1.') }
  end
end