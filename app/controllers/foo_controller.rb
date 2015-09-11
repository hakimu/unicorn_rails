class FooController < ApplicationController
  def index
  	print request
  	@utc_time = Time.now
  	@pdx_time = Time.now
  end
end
