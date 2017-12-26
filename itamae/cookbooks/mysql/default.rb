package "mysql-server" do
  action :install
  version "5.7.20-0ubuntu0.16.04.1"
end

package "mysql-client" do
  action :install
  version "5.7.20-0ubuntu0.16.04.1"
end

package "libmysqlclient-dev" do
  action :install
  version "5.7.20-0ubuntu0.16.04.1"
end

service 'mysql' do
  action [:enable, :start]
end
