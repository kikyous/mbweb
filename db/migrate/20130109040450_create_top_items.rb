class CreateTopItems < ActiveRecord::Migration
  def change
    create_table :top_items do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
