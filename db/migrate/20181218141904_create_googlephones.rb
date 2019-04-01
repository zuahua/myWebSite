class CreateGooglephones < ActiveRecord::Migration
  def change
    create_table :googlephones do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
