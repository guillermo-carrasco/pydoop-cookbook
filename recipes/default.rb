#
# Cookbook Name:: pydoop-cookbook
# Recipe:: default
#
#

include_recipe "pydoop-cookbook::install_deps"

execute "Installing pydoop from repositories using pip..." do
    command "pip install pydoop"
    action :run
end
