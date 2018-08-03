class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :list
      t.belongs_to :vehicle
      t.timestamps
    end
  end
end
