default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:shouldreads][:git_repository] = "https://github.com/chungkikelly/shouldreads/"
default[:shouldreads][:git_revision] = "master"
default[:shouldreads][:path] = "/opt/shouldreads"

default[:shouldreads][:rails_env] = "production"
default[:shouldreads][:log_to_stdout] = "true"

default[:shouldreads][:environment] = {
  "SECRET_KEY_BASE": node[:shouldreads][:secret_key_base],
  "DATABASE_URL": node[:shouldreads][:database_url],
  "RAILS_ENV": node[:shouldreads][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:shouldreads][:log_to_stdout]
}

default[:shouldreads][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
