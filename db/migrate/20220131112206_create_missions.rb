class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :title
      t.string :description
      t.string :startDate
      t.string :finishDate
      t.string :attribut
      t.string :team
      t.string :status

      t.timestamps
    end
  end
end
