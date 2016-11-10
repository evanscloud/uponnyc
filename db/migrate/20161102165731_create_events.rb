class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :organization
      t.time :start_time
      t.time :end_time
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :address
      t.text :skills_needed
      t.integer :minimum_age
      t.string :url
      t.integer :cause_id

      t.timestamps
    end
  end
end
