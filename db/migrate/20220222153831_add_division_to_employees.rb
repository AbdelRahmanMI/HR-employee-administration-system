class AddDivisionToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :division
  end
end
