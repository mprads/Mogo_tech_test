class CreateDogs < ActiveRecord::Migration[5.1]
  def up
    create_table :dogs do |t|
      t.string 'name', :null => false
      t.integer 'age', :null => false
    end
  end

  def down
    drop_table :dogs
  end
end
