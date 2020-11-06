class Article < ApplicationRecord
    
    validates :title, presence: true, length: { maximum: 200 }
    validates :text, presence: true 

    has_one_attached :image
    belongs_to :author, class_name: 'User'
    has_many :categories, through: :article_categories
end
