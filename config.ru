require 'rack'
require 'shotgun'
require 'pry'


class Application

  def call(env)
    req = Rack::Request.new(env)
    resp = Rack::Response.new
    # binding.pry

    if req.path.match('/welcome')
      resp.write('Welcome')
    elsif req.path.match('/about')
        resp.write('This is a web application')
    elsif req.path.match('/')
        resp.write('this is the root')
    end

    # path matches /search?name=terrance
      #'Hi Terrance'
    # path matches /search?name=daniel
      #'Hi Daniel'
    # path matches /search?name=<anything else>
      #'Idk this person'

    # [200, {'content-type' => 'text/html'}, ['live reloading!!!!']]
    
    resp.finish
  end

end



run(Application.new)
