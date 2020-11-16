require 'rails_helper'

RSpec.describe ArticlesController, type: :routing do
  describe 'routing' do
    it 'routes to #new' do
      expect(get: '/sign_in').to route_to('sessions#new')
    end
  end

  describe 'routing' do
    it 'routes to #destroy' do
      expect(get: '/sign_out').to route_to('sessions#destroy')
    end
  end
end
