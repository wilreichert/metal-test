require 'chef_metal_vagrant'

vagrant_cluster ENV['MACHINES_DIR']

vagrant_box 'precise64' do
  url 'http://files.vagrantup.com/precise64.box'
end

with_chef_environment('dev')

machine "test-machine" do
  recipe 'etcd::compile_time'
  action [ :create, :stop ]
end
