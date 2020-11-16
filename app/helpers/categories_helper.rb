module CategoriesHelper
    def last_article_in_category(category)
      category.articles.last
    end

    def last_article_title(category)
      last_article_in_category(category).title
    end

    def category_article_image(category)
        last_article_in_category(category).image
    end
end
