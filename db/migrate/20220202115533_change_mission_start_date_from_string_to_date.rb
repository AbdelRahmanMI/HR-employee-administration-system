class ChangeMissionStartDateFromStringToDate < ActiveRecord::Migration[7.0]
  def change
    change_column(:missions, :startDate, :date)
  end
end
