class AddNotesToChallengeDays < ActiveRecord::Migration[7.1]
  def change
    add_column :challenge_days, :note, :string
  end
end
