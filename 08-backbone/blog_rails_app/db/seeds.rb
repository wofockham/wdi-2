Post.destroy_all
Comment.destroy_all

post1 = Post.create(:title => 'first post', :slug => 'first-post', :content => "Lorem ipsum zombo com")
post2 = Post.create(:title => 'second post', :slug => 'second-post', :content => "Lorem ipsum zombo com two")
post3 = Post.create(:title => 'three post', :slug => 'three-post', :content => "Lorem ipsum zombo com the third")

comment1 = Comment.create(:author => 'Paul', :blather => 'Wow, that is so viral')
comment2 = Comment.create(:author => 'John', :blather => 'I am tweeting about this')
comment3 = Comment.create(:author => 'George', :blather => 'No')
comment4 = Comment.create(:author => 'Ringo', :blather => "it's so just cloud")

post1.comments << comment1
post2.comments << comment2
post3.comments << comment3
post3.comments << comment4
