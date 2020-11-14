module CategoriesHelper
    def category_art(category)
        category.articles.last.image
    end
end
