class CreateOtherItems < ActiveRecord::Migration
  def change
    create_table :other_items do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
