require 'tasks/newrelic'

namespace :exceptional do
	task :demo do
		raise "An error occured in Rake"
		def adder(x,y)
			puts x + y
		end
		adder(1,2)
	end
end