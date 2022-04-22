class MiddlewareTwo
  def initialize(app)
    @app = app
  end

  def call(env)
    puts "MiddlewareTwo reporting in!"
    puts "The app is: #{@app}"
    puts "The has the methods: #{@app.methods - Object.methods}"
    status, headers, body = @app.call(env)
    [status, headers, body]
  end
end

class MiddlewareOne
  def initialize(app)
    @app = app
  end

  def call(env)
    puts "MiddlewareOne reporting in!"
    puts "The app is: #{@app}"
    puts "The has the methods: #{@app.methods - Object.methods}"
    status, headers, body = @app.call(env)
    [status, headers, body]
  end
end

class HandlerClass
  def self.call(env)
    puts 'Handling the request...'
    [200, { "Content-Type" => "text/html" }, ["<b>Request handled.</b>"]]
  end
end

use MiddlewareTwo
use MiddlewareOne
run HandlerClass
