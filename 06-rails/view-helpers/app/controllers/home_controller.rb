class HomeController < ApplicationController
  def home
  end

  def numbers
    @amount = 234.3458735
    @large_number = 3801923091283
    @phone = 2125551212
  end

  def text
    @numbers = (1..20).to_a
    @person_count1 = 1
    @person_count2 = 2
    @story = "A long long long long time ago in a galaxy far far far away"
  end

  def assets
  end

  def url
  end

  def test
  end
end