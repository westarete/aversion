module Aversion
  module Capistrano
    def self.load_into(configuration)
      configuration.load do

        namespace :aversion do
          desc "Write deployed version to a VERSION file"
          task :write do
            run "echo -n '#{branch}' > #{release_path}/VERSION"
          end
        end

        after "deploy:finalize_update", "aversion:write"

      end
    end
  end
end

Airbrake::Capistrano.load_into(Capistrano::Configuration.instance)
