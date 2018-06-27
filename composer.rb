def source_paths
  Array(super) +
      [File.expand_path(File.dirname(__FILE__))]
end

directory 'lib', 'builder'
require "./builder/command"
require "./builder/commands/postgres_config"


# Dir["./lib/commands/*.rb"].each {|file| require_relative file }
# require "lib/commands/postgres_config"
PostgresConfig.new(self).execute
# puts ApplicationController
run "rm -r builder"
