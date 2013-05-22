class CreateCharArchetypes < ActiveRecord::Migration
  def change
    create_table :char_archetypes do |t|
      t.string :type
      t.string :motto
      t.string :core_desire
      t.string :goal
      t.string :greatest_fear
      t.string :strategy
      t.string :weakness
      t.string :talent
      t.references :character

      t.timestamps
    end
    add_index :char_archetypes, :character_id
  end
end
