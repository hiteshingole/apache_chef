#
# Cookbook:: Apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'httpd'

remote_file '/var/www/html/google.png' do

source 'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png'
end

template '/var/www/html/index.html' do
	source 'index.html.erb'
	action :create
end

service 'httpd' do
	action [:enable, :start]
end
