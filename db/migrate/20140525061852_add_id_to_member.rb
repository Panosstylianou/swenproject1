class AddIdToMember < ActiveRecord::Migration
  def change
    add_column :members, :memberID, :integer
  end
end
