class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 200 }
  validates :text, presence: true

  mount_uploader :image, ImageUploader
  belongs_to :author, class_name: 'User'
  has_many :article_categories
  has_many :categories, through: :article_categories

  def self.default_image
  end
end
