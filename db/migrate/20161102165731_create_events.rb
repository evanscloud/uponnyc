class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :organization
      t.datetime :start_date
      t.datetime :end_date
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
