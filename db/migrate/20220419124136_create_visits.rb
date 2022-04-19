class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits do |t|
      t.string :url
      t.string :ip

      t.timestamps
    end
  end
end
