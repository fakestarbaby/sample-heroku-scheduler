desc "This task is called by the Heroku scheduler add-on"
task :create_sample => :environment do
  Sample.create
end
