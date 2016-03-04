require 'new_relic/agent/method_tracer'
NewRelic::Agent.manual_start(:sync_startup => true)

class Boom
	include ::NewRelic::Agent::Instrumentation::ControllerInstrumentation
	def throwing_error
		raise "Rake error from Boom!!!"
		puts "Here's where the agent should raise the error"
	end

	def no_error_thrown
		puts "there's no error for this method"
	end
	add_transaction_tracer :no_error_thrown, :category => :task
end

