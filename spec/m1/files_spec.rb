require 'spec_helper'
set :os, :family => 'redhat', :release => '7', :arch => 'x86_64'

directories = [
  '/opt/mesosphere',
  '/etc/mesosphere',
  '/etc/mesosphere/roles',
  '/etc/mesosphere/setup-flags',

  '/opt/mesosphere/include',
  '/opt/mesosphere/packages',
  '/opt/mesosphere/lib',
  '/opt/mesosphere/etc',
  '/opt/mesosphere/bin',
  '/opt/mesosphere/active',
]

files = [
  '/etc/mesosphere/roles/master',
  '/etc/mesosphere/setup-flags/bootstrap-id',
  '/etc/mesosphere/setup-flags/cluster-packages.json',
  '/etc/mesosphere/setup-flags/repository-url',
  '/opt/mesosphere/active.buildinfo.full.json',
  '/opt/mesosphere/environment',
  '/opt/mesosphere/environment.export',
  '/opt/mesosphere/environment.ip.marathon',
]

directories.each do |d|
  describe file(d) do 
    it { should be_directory }
  end
end

files.each do |f|
  describe file(f) do
    it { should be_file}
  end
end
