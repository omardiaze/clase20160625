class CreateCategoties < ActiveRecord::Migration
  def change
    create_table :categoties do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
