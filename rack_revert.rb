# rack_revert.rb
class RevertSrv
	def call(env)
		request = Rack::Request.new(env)
		response = Rack::Response.new
		response['Content-Type'] = 'text/plain'
		response.status=100
		
		string = request.params['string']
		if string
			response.status = 200
			response.write string.reverse
		else
			response.status = 400
			response.write "You have to pass a string parameter"
		end
		response.finish	
	
	end

end
