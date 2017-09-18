class AddCommentsCountToArticles < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.integer :comments_count, default: 0
    end
  end
end
