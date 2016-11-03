class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :type
      t.text :description
      t.text :mission_statement
      t.string :url
      t.string :address

      t.timestamps
    end
  end
end
