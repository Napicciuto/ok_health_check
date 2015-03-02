module OkHealthCheck
  class Server
    def call(env)
    	[200, {"Content-Type" => 'text/html'}, 'OK']
    end
  end
end