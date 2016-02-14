require 'webrick'

class Simple < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(req, res)
    # status, content_type, body = do_stuff_with req
    # cgi = CGI.new

    res.status = 200
    res['Content-Type'] = 'text/plain'
    res.body = req.query.to_s
  end
end

srv = WEBrick::HTTPServer.new({
  DocumentRoot:   './',
  BindAddress:    '192.168.33.101',
  Port:           '20000',
  CGIInterpreter: '/usr/local/rbenv/shims/ruby'
})

# srv.mount('/', WEBrick::HTTPServlet::FileHandler, 'index.html')

srv.mount_proc '/' do |req, res|
  # File.open('index.html') do |f|
    # res.body = f.read
  # end
  res.body = req.query["a"] 
end

srv.mount '/simple', Simple

srv.start
