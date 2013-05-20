class CreateUniverses < ActiveRecord::Migration
  def change
    create_table :universes do |t|
      t.string :name
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :universes, :user_id
  end
end
