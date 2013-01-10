class CreateLeftItems < ActiveRecord::Migration
  def change
    create_table :left_items do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
