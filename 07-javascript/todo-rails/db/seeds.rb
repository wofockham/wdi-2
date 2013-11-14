User.destroy_all
Task.destroy_all
Priority.destroy_all

u1 = User.create(:name => 'Bob', :email => 'bob@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'Sue', :email => 'sue@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'Sam', :email => 'sam@gmail.com', :password => 'a', :password_confirmation => 'a')

p1 = Priority.create(:name => 'high', :color => '#ff0000', :value => 1)
p2 = Priority.create(:name => 'medium', :color => '#00ff00', :value => 2)
p3 = Priority.create(:name => 'low', :color => '#0000ff', :value => 3)
p4 = Priority.create(:name => 'alert', :color => '#ff33cc', :value => 4)
p5 = Priority.create(:name => 'notify', :color => '#ff90ff', :value => 5)

t1 = Task.create(:title => 'Get milk', :description => 'Need milk now', :duedate => '3/3/2010', :is_complete => true)
t2 = Task.create(:title => 'Get bread', :description => 'No bread at home', :duedate => '1/9/2011') #, :address => '633 Bourke St Surry Hills NSW 2010')
t3 = Task.create(:title => 'Get laundry', :description => 'Dirty clothes!', :duedate => '5/2/2014') #, :address => '111 Sussex St Sydney')

t1.priority = p1
t1.save
t2.priority = p2
t2.save
t3.priority = p3
t3.save

u1.priorities << p1 << p2 << p3 << p4 << p5
u1.tasks << t1 << t2 << t3