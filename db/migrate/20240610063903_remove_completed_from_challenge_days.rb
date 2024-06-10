class RemoveCompletedFromChallengeDays < ActiveRecord::Migration[7.1]
  def change
    remove_column :challenge_days, :completed
  end
end
