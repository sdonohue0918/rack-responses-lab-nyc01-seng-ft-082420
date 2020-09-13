class Application
    # def call(env)
    #     return [ 200, {'Content-Type' => 'text/html'}, last_response]
    # # end
    # def call(env)
    #     def last_response
    #         resp = Rack::Response.new

    #         time_here = Time.now
    #         time_values = time_here.to_a
    #         time_at_hr = time_values[2]
    #         if time_at_hr < 12 && time_at_hr >= 0
    #         resp.write "Good Morning!"
    #         elsif time_at_hr > 12 && time_values <= 23
    #         resp.write "Good Afternoon!"
    #         end
    #     resp.finish
    #     end
    # end

    def call(env)
        resp = Rack::Response.new
        now = Time.now
        if now.hour >=12
            resp.write "Good Afternoon"
        else 
            resp.write "Good Morning"
        end
    end
end
