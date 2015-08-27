class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :user_name
      t.string :pic_url
      t.float :temp
      t.float :humidity

      t.timestamps
    end
  end
end
