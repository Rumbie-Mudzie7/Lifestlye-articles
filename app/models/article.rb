class Article < ApplicationRecord
    has_one_attached :image
    validates :title, presence: true, length: { maximum: 200 }
    validates :text, presence: true 
end
