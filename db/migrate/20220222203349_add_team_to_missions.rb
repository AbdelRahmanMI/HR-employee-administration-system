class AddTeamToMissions < ActiveRecord::Migration[7.0]
  def change
    add_reference :missions, :team
  end
end
