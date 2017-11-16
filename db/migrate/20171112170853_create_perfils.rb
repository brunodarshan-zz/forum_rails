class CreatePerfils < ActiveRecord::Migration[5.0]
  def change
    create_table :perfils do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio

      t.timestamps
    end
  end
end
