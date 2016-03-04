require 'tasks/newrelic'

require '/Users/hakimu/Documents/scribble/heroku_rails_app/unicorn_app/lib/boom.rb'

namespace :exceptional do 
	task :demo => :environment do
		#raise "An error occured in Rake"
		def adder(x,y)
			puts x + y
		end
		adder(1,2)
		Boom.new.throwing_error
	end

	task :bar => :environment do
		def multiplier(x,y)
			puts x * y
		end
		multiplier(1,2)
		Boom.new.no_error_thrown
	end
end