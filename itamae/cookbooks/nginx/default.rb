package "nginx" do
  version "1.10.3-0ubuntu0.16.04.2"
  action :install
end

remote_file "/etc/nginx/sites-enabled/rails_app"

service "nginx" do
  action %i[enable start]
end
