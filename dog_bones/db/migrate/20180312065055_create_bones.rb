class CreateBones < ActiveRecord::Migration[5.1]
  def up
    create_table :bones do |t|
      t.integer 'rating', :null => false
      t.integer 'animal_type', :null => false
    end
  end

  def down
    drop_table :bones
  end
end
