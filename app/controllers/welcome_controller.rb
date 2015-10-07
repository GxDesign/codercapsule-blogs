class WelcomeController < ApplicationController
  def index
    @post = []
    url = 'https://theunlikelycoder.wordpress.com/feed/'
    feed = Feedjira::Feed.fetch_and_parse url
    feed.entries.each do |post|
    @post << post
    #binding.pry
    end
  end

  def create
  end

  def new
  end

end
