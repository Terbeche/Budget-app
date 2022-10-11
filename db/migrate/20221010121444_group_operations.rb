class GroupOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :groups_operations, id: false do |t|
      t.belongs_to :operation
      t.belongs_to :group
    end
 

  end
end
