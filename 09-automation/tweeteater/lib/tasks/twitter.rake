namespace :twitter do

  desc "Create dummy Twitter posts and users"
  task :posts, [:user_count] => :environment do |t, args|
    FactoryGirl.create_list(:user_with_tweets, args[:user_count].to_i)
  end

  desc "Clear users and tweets tables"
  task :nuke => :environment do
    User.destroy_all
    Tweet.destroy_all
  end

  desc "Search Twitter for a query and a number of results"
  task :search, [:query, :limit] => :environment do |t, args|
    # Make this work via Twitter gem
  end

end
