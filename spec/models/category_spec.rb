require 'rails_helper'

RSpec.describe Category, type: :model do
    subject {Category.new}

    describe 'validations' do
       it {should validate_presence_of(:name) } 
       it {should validate_length_of(:name).is_at_most(20) }
    end

    context 'associations' do
        it {should have_many(:article_categories) }
        it {should have_many(:articles).through(:article_categories) }
    end
end