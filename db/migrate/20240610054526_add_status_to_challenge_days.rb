class AddStatusToChallengeDays < ActiveRecord::Migration[7.1]
  def change
    add_column :challenge_days, :status, :integer
  end
end
