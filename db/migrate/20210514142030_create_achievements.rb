class CreateAchievements < ActiveRecord::Migration[6.1]
  def change
    create_table :achievements do |t|
      t.string :title, null: false
      t.text :description
      t.integer :score, null: false
      t.date :date, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
