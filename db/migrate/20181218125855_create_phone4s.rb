class CreatePhone4s < ActiveRecord::Migration
  def change
    create_table :phone4s do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
