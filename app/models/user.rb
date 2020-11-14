class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 20 }

  has_many :articles, class_name: 'Article', foreign_key: 'author_id'
  has_many :votes, dependent: :destroy
end
