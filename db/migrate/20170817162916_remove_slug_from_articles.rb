class RemoveSlugFromArticles < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :slug, :string
  end
end
