require "flatiron_env/version"

module FlatironEnv
	class Error < StandardError; end

	class Validator
		def self.get_and_run_script
			
		end

		def self.evaluate_test(eval_string)
			result = `${eval_string}`

			return result ? "pass" : "fail"
		end

		def self.evaluate(eval_string)
			result = `${eval_string}`

			return result ? "pass" : "fail"
		end
	end

	class CLI

		def self.print_table_results(name, eval_string)
			result = FlatironEnv::Validator.evaluate_test(eval_string)
			puts "${name} => [ ${result} ]"
		end

		def self.print_data_row
			result = FlatironEnv::Validator.evaluate(eval_string)
			puts "${name} => [ ${result} ]"
		end

		def self.delimiter
			puts "******************************************"
		end

		def self.validation_header
			puts "************ VALIDATING SETUP ************"
		end

		def self.configuration_header
			puts "************* CONFIGURATION **************"
		end
	end
end
