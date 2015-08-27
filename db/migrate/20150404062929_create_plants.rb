class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :user_name
      t.string :pic_url
      t.float :temp
      t.float :humidity
      t.float :water_height
      t.float :ele_cond

      t.timestamps
    end
  end
end
