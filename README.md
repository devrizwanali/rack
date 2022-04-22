# rack

It allows you to write middlewares for Ruby apps easily! Rack creates an interface that wraps HTTP requests and responses. A Rack application is a Ruby object (not a class) that responds to the `call` method. The application is called when the method `call` is invoked.

> Rack provides a minimal, modular, and adaptable interface for developing web applications in Ruby. By wrapping HTTP requests and responses in the simplest way possible, it unifies and distills the API for web servers, web frameworks, and software in between (the so-called middleware) into a single method call. 
