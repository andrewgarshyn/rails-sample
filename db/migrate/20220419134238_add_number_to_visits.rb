class AddNumberToVisits < ActiveRecord::Migration[7.0]
  def change
    add_column :visits, :number, :integer, default: 0
  end
end
