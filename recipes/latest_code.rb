#
# Cookbook Name:: pydoop
# Recipe:: latest_code
#

#include_recipe "hadoop"
include_recipe "pydoop-cookbook::install_deps"

#Checkot pydoop from Git
git "Checking out pydoop code" do
    repository  "#{node['pydoop-latest-code']}"
    action :sync
    destination "#{node['install_dir']}/pydoop"
end

#Compile pydoop. Requires java SDK!
execute "Compiling and installing pydoop" do
    command "cd #{node['install_dir']}/pydoop && python setup.py build && python setup.py install"
    action :run
end

