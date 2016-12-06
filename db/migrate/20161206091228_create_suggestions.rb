class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.timestamps(null: false)
    end
  end
end
