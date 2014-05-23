class AddMembersToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :members, :text
  end
end
