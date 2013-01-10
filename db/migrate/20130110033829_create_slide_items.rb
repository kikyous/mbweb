class CreateSlideItems < ActiveRecord::Migration
  def change
    create_table :slide_items do |t|
      t.string :title
      t.text :content
      t.string :slideimg

      t.timestamps
    end
  end
end
