require 'rails_helper'

RSpec.describe Vote, type: :model do
  subject { Vote.new }

  describe 'validations' do
    it { should belong_to(:user) }
    it { should belong_to(:article) }
  end
end
