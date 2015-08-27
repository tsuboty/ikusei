class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :user_name
      t.string :pic_url
      t.float :temp
      t.float :humidity
      t.string :comment

      t.timestamps
    end
  end
end
