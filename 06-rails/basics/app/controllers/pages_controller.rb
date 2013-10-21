class PagesController < ApplicationController
  def home
  end

  def welcome
  end

  def faq
  end

  def google
    redirect_to 'http://www.google.com/'
  end
end