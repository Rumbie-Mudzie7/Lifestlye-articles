require 'rails_helper'

RSpec.describe Article, type: :model do
  subject { Article.new }

  describe 'validations' do
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_most(200) }
  end

  context 'associations' do
    it { should belong_to(:author).class_name('User') }
    it { should have_many(:article_categories) }
    it { should have_many(:categories).through(:article_categories) }
    it { should have_many(:votes) }
  end
end
