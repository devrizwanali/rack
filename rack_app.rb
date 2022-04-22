require 'rack'

rack_app = Proc.new do |env|
 [200, {'Content-Type' => 'application/json'}, ["{'message': 'Hello rack !!'}"]]
end

Rack::Handler::WEBrick.run rack_app
