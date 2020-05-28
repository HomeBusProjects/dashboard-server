class CreateTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :templates do |t|
      t.string :name, null: false, index: true
      t.string :ddc, null: false, index: true
      t.string :template, null: false, default: ''

      t.timestamps
    end
  end
end
