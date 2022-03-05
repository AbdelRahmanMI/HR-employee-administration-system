class ChangeMissionFinishDateFromStringToDate < ActiveRecord::Migration[7.0]
  def change
    change_column(:missions, :finishDate, :date)
  end
end
