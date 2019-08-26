class DropCameras < ActiveRecord::Migration[6.0]
  def change
    drop_table :cameras
  end
end
