class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :content
      t.string :tags, array: true, default: []
      t.timestamps
    end
  end
end
