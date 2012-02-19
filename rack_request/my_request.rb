class MyRequest
  def call(env)
    req = Rack::Request.new(env)
    name = req.params['name']
    text = req.params['text']

    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 200
      str = "Parameters sent: name - #{name} | text - #{text}"
      res.write str
    end
  end
end
