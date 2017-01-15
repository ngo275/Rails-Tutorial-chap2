class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
        #require 'yelp'

    client = Yelp::Client.new({ 
      consumer_key: "XXXXXXXX",
      consumer_secret: "XXXXXXXX",
      token: "XXXXXXXX",
      token_secret: "XXXXXXXXX"
    })

    #render text: "hello, world!"
    params = {
      term: 'food',
      limit: 3
#      category_filter: 'discgolf'
    }
    #locale = { lang: 'fr' }

    result =  client.search('San Francisco', params)

    print(result.businesses)
  end
end
