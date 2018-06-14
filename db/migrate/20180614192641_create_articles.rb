class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.text :url, null: false
      t.timestamps
    end
    add_index :articles, [:title], unique: true
    add_index :articles, [:url], unique: true
  end
end
