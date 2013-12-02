class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.boolean :important, default: false

      t.timestamps
    end

    Category.create(name: 'Pools', slug: 'pools')
    Category.create(name: 'Forums', slug: 'forums')
    Category.create(name: 'Exchanges', slug: 'exchanges')
    Category.create(name: 'Merchants', slug: 'merchants')
    Category.create(name: 'News', slug: 'news')
    Category.create(name: 'Other', slug: 'other')
    Category.create(name: 'Official', slug: 'official', important: true)
  end
end
