require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  include Devise::Test::IntegrationHelpers

  describe 'Group request test' do
    before(:each) do
      @user = User.create(name: 'hello', email: 'hello@gmail.com', password: '123456')
      @group = Group.create(author: @user, name: 'First Category')

      sign_in @user
    end

    it 'groups#index - should response status success' do
      get user_groups_path(@user.id)
      expect(response).to have_http_status(:success)
    end

    it 'groups#show - should response status success' do
      get user_group_path(@user.id, @group.id)
      expect(response).to have_http_status(:success)
    end

    it 'groups#new - should response status success' do
      get new_user_group_path(@user.id)
      expect(response).to have_http_status(:success)
    end
  end
end
