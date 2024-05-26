class CreateChallengeDays < ActiveRecord::Migration[7.1]
  def change
    create_table :challenge_days do |t|
      t.date :date
      t.binary :photo
      t.boolean :completed
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
