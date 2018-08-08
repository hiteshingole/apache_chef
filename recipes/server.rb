#
# Cookbook:: Apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'httpd'
file '/var/www/html/index.html' do
	content 'Hello World !!'
end

service 'httpd' do
	action [:enable, :start]
end
