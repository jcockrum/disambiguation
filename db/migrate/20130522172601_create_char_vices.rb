class CreateCharVices < ActiveRecord::Migration
  def change
    create_table :char_vices do |t|
      t.string :selfcontrol
      t.string :approach
      t.string :efficacy
      t.string :regard
      t.references :character

      t.timestamps
    end
    add_index :char_vices, :character_id
  end
end
