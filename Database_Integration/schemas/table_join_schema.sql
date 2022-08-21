CREATE TABLE mlenv_ready AS
   SELECT  article_stats.uuid, clean_articles.site_url, clean_articles.author, clean_articles.published, clean_articles.type, article_stats.has_image, article_stats.spam_score, article_stats.replies_count, article_stats.participants_count, article_stats.likes, article_stats.comments, article_stats.shares, clean_articles.label
   FROM article_stats
   INNER JOIN clean_articles ON article_stats.uuid=clean_articles.uuid;