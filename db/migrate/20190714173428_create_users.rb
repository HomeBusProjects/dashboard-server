class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :slack_uid
      t.boolean :admin

      t.timestamps

      t.index :slack_uid, unique: true
    end
  end
end
