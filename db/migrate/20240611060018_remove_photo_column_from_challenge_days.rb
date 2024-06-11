class RemovePhotoColumnFromChallengeDays < ActiveRecord::Migration[7.1]
  def change
    remove_column :challenge_days, :photo
  end
end
