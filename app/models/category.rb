class Category < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }

  has_many :article_categories
  has_many :articles, through: :article_categories
end
