desc 'Updates comments_count for articles'

task update_comments_count: :environment do
  ActiveRecord::Base.connection.execute("UPDATE articles SET comments_count = (SELECT count(1) FROM comments WHERE comments.article_id = articles.id)")
end
