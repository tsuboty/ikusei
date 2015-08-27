class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :user_name

      t.timestamps
    end
  end
end
