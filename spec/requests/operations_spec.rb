require 'rails_helper'

RSpec.describe 'Operations', type: :request do
  include Devise::Test::IntegrationHelpers

  describe 'Operation request test' do
    before(:each) do
      @user = User.create(name: 'hello', email: 'hello@gmail.com', password: '123456')
      @group = Group.create(author: @user, name: 'First Category')
      @operation = @group.operations.create(author: @user, name: 'First transaction', amount: 20)
      sign_in @user
    end

    it 'groups#index - should response status success' do
      get user_group_path(@user.id, @group.id)
      expect(response).to have_http_status(:success)
    end

    it 'operation#new - should response status success' do
      get new_user_group_operation_path(@user.id, @group.id)
      expect(response).to have_http_status(:success)
    end
  end
end
