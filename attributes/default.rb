default[:spark][:version] = "spark-0.9.0-incubating-bin-hadoop2"
default[:spark][:repository] = "http://d3kbcqa49mib13.cloudfront.net/#{node[:spark][:version]}.tgz"
default[:spark][:username] = "root"
default[:spark][:group] = "root"
default[:spark][:home] = "/usr/lib/spark"

