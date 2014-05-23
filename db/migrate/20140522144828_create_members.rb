class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :surname
      t.integer :studentid
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
