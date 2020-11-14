module CategoriesHelper
    def category_art
        category.articles.last.image
    end
end
