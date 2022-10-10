class GroupOperations < ActiveRecord::Migration[7.0]
  def change
    create_table :operations_groups, id: false do |t|
      t.belongs_to :operation
      t.belongs_to :group
    end
  end
end
