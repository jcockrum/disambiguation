class AddAncestryToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :ancestry, :string
    add_index :locations, :ancestry
  end

  def self.down
    remove_index :locations, :ancestry
    remove_column :locations, :ancestry
  end
end
