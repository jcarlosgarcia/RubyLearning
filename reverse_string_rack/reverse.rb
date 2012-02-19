class Reverse
  def call(env)
    req = Rack::Request.new(env)
    text = req.params['text']

    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 200
      str = "String sent: #{text} | reversed: #{text.reverse}"
      res.write str
    end
  end
end
