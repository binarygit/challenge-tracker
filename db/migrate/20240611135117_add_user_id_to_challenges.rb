class AddUserIdToChallenges < ActiveRecord::Migration[7.1]
  def change
    add_column :challenges, :user_id, :integer
  end
end
