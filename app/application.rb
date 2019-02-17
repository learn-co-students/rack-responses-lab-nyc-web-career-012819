class Application

  def call(env)
    resp = Rack::Response.new


    time_now = Time.now.strftime('%H:%M')
    time_compare_with = '11:59'

  if time_now < time_compare_with
    resp.write "Good Morning!"
  else
    resp.write "Good Afternoon!"
  end

    resp.finish
  end

end
