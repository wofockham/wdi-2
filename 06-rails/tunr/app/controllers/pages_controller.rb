class PagesController < ApplicationController
  def home
    raise session.inspect
  end
end
