#
# Cookbook:: Apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'httpd'
file '/var/www/html/index.html' do
	content "<h1>Hello World !!</h1>
<h2> Welcome to host #{node['hostname']}</h2>
<h3> The ip address of this host is #{node['ipaddress']}</h3>"
end

service 'httpd' do
	action [:enable, :start]
end
