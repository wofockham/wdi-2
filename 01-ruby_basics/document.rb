require 'pry'

class Document
  attr_accessor :title, :author, :content
end

doc = Document.new
doc.title = 'Declaration of Independence'
doc.author = 'Founding Father Jerks'
doc.content = 'We hold these truths to be self evident that no one remembers what comes next'

binding.pry