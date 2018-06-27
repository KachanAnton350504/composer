require_relative "./lib/command"
require_relative "./lib/commands/postgres_config"

# Dir["./lib/commands/*.rb"].each {|file| require_relative file }
# require "lib/commands/postgres_config"
PostgresConfig.new(self).execute
