Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins "http://localhost:3000"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
        #note to self: that origins above is the location of your api website. like where your react is running.

    allow do
        # add the domain of the front-end production app on netlify.
        origins "https://app.shill.lol"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
end