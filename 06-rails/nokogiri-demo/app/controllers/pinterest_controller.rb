require 'open-uri'

class PinterestController < ApplicationController
  def show
    query = params[:query]
    query = 'butterflies' unless query.present?

    doc = Nokogiri::HTML open("http://www.pinterest.com/search/pins/?q=#{query}",
                              :allow_redirections => :safe) # Pinterest is a jerk about redirects.
    images = doc.css('img.pinImg')

    @urls = images.map do |i|
      i.get_attribute('src')
    end
  end
end
