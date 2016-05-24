# set path to application
working_directory ENV['APP_HOME']

# Set unicorn options
worker_processes ENV['UNICORN_WORKERS'].to_i
preload_app true
timeout ENV['UNICORN_TIMEOUT'].to_i

# Set up socket location
listen ENV['UNICORN_SOCK'], :backlog => 64
listen ENV['UNICORN_PORT'] if !ENV['UNICORN_PORT'].nil?

# Logging
stderr_path ENV['UNICORN_ERROR_LOG']
stdout_path ENV['UNICORN_LOG']

# Set master PID location
pid stdout_path ENV['UNICORN_PID']
