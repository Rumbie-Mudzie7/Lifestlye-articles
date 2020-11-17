class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 200 }
  validates :text, presence: true

  mount_uploader :image, ImageUploader
  belongs_to :author, class_name: 'User'
  has_many :article_categories
  has_many :categories, through: :article_categories
  has_many :votes, dependent: :destroy

  def self.default_image
    'https://res.cloudinary.com/lifestyle-articles-capstone-project/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1605014509/vlupwckeq5vf6gpbsdub.png'
  end
end
