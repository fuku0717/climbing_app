class CreateMountains < ActiveRecord::Migration[6.0]
  def change
    create_table :mountains do |t|
      t.string :mountain_name, null: false
      t.text :level, null: false
      t.text :point, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
