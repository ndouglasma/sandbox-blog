class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :article, null: false
      t.string :commenter, null: false
      t.text :body, null: false
      t.timestamps
    end
  end
end
