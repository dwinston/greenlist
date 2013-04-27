class AddStatusIndexToItems < ActiveRecord::Migration
  def change
    add_index :items, :status
  end
end
