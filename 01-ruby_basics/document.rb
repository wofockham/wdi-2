require 'pry'

class Document
  attr_accessor :title, :author, :content

  def initialize(title, author, content)
    puts "Creating new document!"
    @title = title
    @author = author
    @content = content
  end

  def words
    @content.split
  end

  def to_s
    "
Title: #{@title}
Author: #{@author}

#{@content}"
  end
end

doc = Document.new
doc.title = 'Declaration of Independence'
doc.author = 'Founding Father Jerks'
doc.content = 'We hold these truths to be self evident that no one remembers what comes next'

binding.pry