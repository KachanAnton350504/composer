# def source_paths
#   Array(super) +
#       ["./composer"]
# end
run "git clone https://github.com/KachanAnton350504/composer.git"

# directory 'lib', 'builder'
require "./composer/lib/command"
require "./composer/lib/commands/postgres_config"


# Dir["./lib/commands/*.rb"].each {|file| require_relative file }
# require "lib/commands/postgres_config"
PostgresConfig.new(self).execute
# puts ApplicationController
run "rm -r composer"
