class CreateBlogArticles < ActiveRecord::Migration
  def change
    create_table :blog_articles do |t|
      t.string :title, null: false, default: ''
      t.text :body
      t.datetime :published_at

      t.timestamps
    end
  end
end
