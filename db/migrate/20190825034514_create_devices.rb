class CreateDevices < ActiveRecord::Migration[6.0]
  def change
    create_table :devices do |t|
      t.string :uuid
      t.integer :kind

      t.timestamps
    end
    add_index :devices, :uuid
  end
end
