class Plantadd < ActiveRecord::Migration
  def change
  	change_table :blogs do |t|
      t.integer :plant_id
      
    end
  end
end
