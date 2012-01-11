desc "This task is called by the Heroku scheduler add-on"
task :create_sample => :environment do
  unless Schedule.where("? <= reserved_at and reserved_at <= ?", 5.minutes.ago, 5.minutes.since).size == 0
    sleep rand(10).minutes * 1000
    Sample.create
  end
end
