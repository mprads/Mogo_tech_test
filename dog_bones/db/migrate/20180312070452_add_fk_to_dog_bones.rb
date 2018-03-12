class AddFkToDogBones < ActiveRecord::Migration[5.1]
  def up
    add_column :bones, :dog_id, :integer
  end

  def down
    remove_column :bones, :dog_id
  end
end
