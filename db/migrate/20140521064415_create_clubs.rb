class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.text :name
      t.integer :studentid
      t.text :category
      t.text :description
      t.integer :phone
      t.text :email
      t.text :address
      t.integer :fb_id

      t.timestamps
    end
  end
end
