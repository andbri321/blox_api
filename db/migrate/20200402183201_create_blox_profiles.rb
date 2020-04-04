class CreateBloxProfiles < ActiveRecord::Migration
  def change
    create_table :blox_profiles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
