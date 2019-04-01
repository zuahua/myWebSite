class CreateSmartphones < ActiveRecord::Migration
  def change
    create_table :smartphones do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
