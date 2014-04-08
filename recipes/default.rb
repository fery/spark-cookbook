#
# Cookbook Name:: cookbook-spark
# Recipe:: default
#
# Copyright 2013, Holden Karau
#
# BSD-3 Clause
#

# Override some java settings
node.default['java']['oracle']['accept_oracle_download_terms'] = true
node.default['java']['install_flavor'] = 'oracle'
# Specify the scala version we are using
node.default[:scala][:version] = "2.10.4"
node.default[:scala][:url] = "http://www.scala-lang.org/files/archive/scala-2.10.4.tgz"
# Create the scala directory

# Install scala
include_recipe "scala::default"

spark_tar = Chef::Config[:file_cache_path] + "/spark.tar.gz"

remote_file spark_tar do
  source node[:spark][:repository]
  mode "0644"
end

execute "untar spark" do
  cwd Chef::Config[:file_cache_path]
  command "tar xzvf " + spark_tar
end

execute "move spark" do
  command "mv -rf #{Chef::Config[:file_cache_path]}/#{node[:spark][:version]} #{node[:spark][:home]}"
end