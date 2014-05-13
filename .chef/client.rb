root_dir = File.expand_path File.dirname(__FILE__)

cache_path "#{root_dir}/cache"
file_cache_path "#{root_dir}/cache"
#log_level :info
#log_location "#{root_dir}/client.log"
ssl_verify_mode  :verify_none
