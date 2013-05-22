class CreateCharVirtues < ActiveRecord::Migration
  def change
    create_table :char_virtues do |t|
      t.string :selfcontrol
      t.string :approach
      t.string :efficacy
      t.string :regard
      t.references :character

      t.timestamps
    end
    add_index :char_virtues, :character_id
  end
end
