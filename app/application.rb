class Application

  def call(env)
    time = Time.now
    resp = Rack::Response.new

    if time.strftime("%p")=="AM"
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
