class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.text :description
      t.string :url
      t.boolean :active, default: false
      t.belongs_to :category
      t.timestamps
    end
  end
end
