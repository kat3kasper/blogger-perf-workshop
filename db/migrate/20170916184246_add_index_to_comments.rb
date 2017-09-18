class AddIndexToComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.index :article_id
    end
  end
end
