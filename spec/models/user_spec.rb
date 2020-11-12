require 'rails_helper'

RSpec.describe User, type: :model do
    subject { User.new }

    describe 'validations' do
        it {should validate_presence_of(:name) }
        it {should validate_length_of(:name).is_at_most(20) }
        it {should validate_uniqueness_of(:name).case_insensitive }
    end

    context 'associations', type: :model do
       it {should have_many(:articles).class_name('Article') } 
       it {should have_many(:votes)}
    end
end

