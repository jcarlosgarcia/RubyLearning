module MyMiddleware
  class Hello
    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] == '/hello'
        [200,  {"Content-Type" => "text/plain"}, ["Hello from the middleware!"]]
      else
        # forward the request
        @app.call(env)
      end
    end
  end
end
