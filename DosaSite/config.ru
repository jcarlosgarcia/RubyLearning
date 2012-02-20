use Rack::Static,
  :urls => ["/stylesheets", "/images"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
       'Content-type' => 'text/html',
       'Cache-Control' => 'public, max-age=86400'
    }
    File.open('public/index.html', File::RDONLY)
  ]
}
