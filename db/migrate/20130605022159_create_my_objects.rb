class CreateMyObjects < ActiveRecord::Migration
  def change
    create_table :my_objects do |t|
      t.integer :required_number, :null => false
      t.timestamps
    end
  end
end
