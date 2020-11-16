module CategoriesHelper
    def last_article_in_category(category)
      category.articles.last if category.articles.any?
    end

    def last_article_title(category)
      if last_article_in_category(category)
        last_article_in_category(category).title
      else
        'There are no articles under this category'
      end
    end

    def category_article_image(category)
        last_article_in_category(category)&.image if last_article_in_category(category)
    end
end
