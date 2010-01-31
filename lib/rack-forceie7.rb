module Rack
  class ForceIE7
    def initialize app, options = { }
      @app = app
    end

    def call env
      status, headers, body = @app.call(env)
      headers["X-UA-Compatible"] = "IE=7"
      [status, headers, body]
    end
  end
end