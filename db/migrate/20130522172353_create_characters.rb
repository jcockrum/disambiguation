class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.text :description
      t.references :universe

      t.timestamps
    end
    add_index :characters, :universe_id
  end
end
