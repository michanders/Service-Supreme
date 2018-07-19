class CreateAutoLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :auto_logs do |t|
      t.text :entry
      t.belongs_to :vehicle
      t.timestamps null: false
    end
  end
end
