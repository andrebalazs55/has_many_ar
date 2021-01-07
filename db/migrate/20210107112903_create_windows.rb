class CreateWindows < ActiveRecord::Migration[5.0]
  def change
    create_table :windows do |t|
      t.references :house
      t.timestamps
    end
  end
end
