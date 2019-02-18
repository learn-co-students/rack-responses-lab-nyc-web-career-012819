class Application

  def call(env)
      resp = Rack::Response.new
      ctime = Time.now.to_s.split(" ")[1].split(":")[0].to_i
      if (1..11).include?(ctime)
      resp.write "Good Morning"
      else
      resp.write "Good Afternoon"
    end
      resp.finish
  end

end
