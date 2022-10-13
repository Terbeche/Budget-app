require 'rails_helper'

RSpec.feature 'Operations', type: :feature do
  include Devise::Test::IntegrationHelpers

  before(:each) do
    @user = User.create(name: 'hello', email: 'hello@gmail.com', password: '123456')
    @group = Group.create(name: 'First Category', author_id: @user.id)
    @operation = @group.operations.create(name: 'First Transaction', amount: 70, author_id: @user.id)

    sign_in @user
  end

  it 'Should go to the new Transaction page' do
    visit user_group_path(@user, @group)
    first(:link, 'Create new Transaction').click

    expect(page).to have_content('Add New Transaction')
  end
end
