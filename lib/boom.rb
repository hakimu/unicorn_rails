require 'new_relic/agent/method_tracer'
NewRelic::Agent.manual_start(:sync_startup => true)

class Boom
	include ::NewRelic::Agent::Instrumentation::ControllerInstrumentation
	def throwing_error
		raise "Rake error from Boom!!!"
		puts "Here's where the agent should raise the error"
	end
	add_transaction_tracer :throwing_error, :category => :task
end

