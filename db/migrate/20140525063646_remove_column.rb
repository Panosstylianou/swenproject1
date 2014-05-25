class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :members, :memberID, :integer
  end
end
