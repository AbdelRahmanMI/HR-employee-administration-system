class ChangeTeams < ActiveRecord::Migration[7.0]
  def change
    change_column :divisions, :teams, :text, array: true
  end
end
