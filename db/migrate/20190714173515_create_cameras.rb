class CreateCameras < ActiveRecord::Migration[5.2]
  def change
    create_table :cameras do |t|
      t.string :name
      t.string :homebus_uuid
      t.boolean :public

      t.timestamps
    end
  end
end
