require "flatiron_env/version"

module FlatironEnv
	class Error < StandardError; end

	class Validator
		def self.get_and_run_script
			exec('curl -so- https://raw.githubusercontent.com/hysan/flatiron-manual-setup-validator/master/manual-setup-check.sh | bash 2> /dev/null
')
		end
	end
end
