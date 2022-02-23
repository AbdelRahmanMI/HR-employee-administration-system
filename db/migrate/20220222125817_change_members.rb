class ChangeMembers < ActiveRecord::Migration[7.0]
  def change
    change_column :teams, :members, :text, array: true
  end
end
