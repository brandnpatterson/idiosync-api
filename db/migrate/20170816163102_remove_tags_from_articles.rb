class RemoveTagsFromArticles < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :tags, :text
  end
end
