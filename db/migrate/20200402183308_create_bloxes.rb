class CreateBloxes < ActiveRecord::Migration
  def change
    create_table :bloxes do |t|
      t.string :title
      t.references :knowledge_area, index: true, foreign_key: true
      t.references :functional_area, index: true, foreign_key: true
      t.references :blox_profile, index: true, foreign_key: true
      t.references :cycle, index: true, foreign_key: true
      t.references :shift, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
