module ArticlesHelper
  def main_article
    Article.includes(:votes).all.max { |a, b| a.votes.count <=> b.votes.count }
  end

  def count_votes
    main_article.votes.count
  end

  def main_image
    main_article ? main_article.image : Article.default_image
  end

  def main_article_title
    main_article ? main_article.title : 'No Main Articles so far'
  end
end
