execute "apt-get update"

include_recipe "cookbooks/ruby/default.rb"
include_recipe "cookbooks/nginx/default.rb"
include_recipe "cookbooks/mysql/default.rb"
include_recipe "cookbooks/redis/default.rb"
