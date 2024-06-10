namespace :challenge_days do
  desc "Migrate data from challenge_days completed column to status column"
  task populate_status: :environment do
    completed_challenge_days = ChallengeDay.where(completed: true)
    puts "Going to update #{completed_challenge_days.count} challenge days"

    ActiveRecord::Base.transaction do
      completed_challenge_days.each do |cd|
        cd.success!
        print '.'
      end
    end

    puts "All done!"
  end

  desc "Set uncompleted challenge_days to neutral status"
  task set_to_neutral: :environment do
    uncompleted_challenge_days = ChallengeDay.where(completed: nil)
    puts "Going to update #{uncompleted_challenge_days.count} challenge days"

    ActiveRecord::Base.transaction do
      uncompleted_challenge_days.each do |cd|
        cd.neutral!
        print '.'
      end
    end

    puts "All done!"
  end
end
