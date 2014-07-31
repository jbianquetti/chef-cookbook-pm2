#
# Cookbook Name:: pm2
# Recipe:: pm2
#
# Copyright 2014, Joe Richards
#

nodejs_npm 'forever-agent'
nodejs_npm 'coffee-script'

nodejs_npm 'grunt-contrib-watch'
nodejs_npm 'pm2'
nodejs_npm 'nodemon'

execute "pm2 startup #{node['platform']} " do
    not_if { ::File.exists?('/etc/init.d/pm2-init.sh') }
end
