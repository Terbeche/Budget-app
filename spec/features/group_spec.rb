require 'rails_helper'

RSpec.feature 'Groups', type: :feature do
  include Devise::Test::IntegrationHelpers

  before(:each) do
    @user = User.create(name: 'hello', email: 'hello@gmail.com', password: '123456')
    @group = Group.create(name: 'Fisrt Category', author_id: @user.id)

    sign_in @user
  end

  it 'Categories page should have (Create new Category) link' do
    visit user_groups_path(@user)

    expect(page).to have_content('Create new Category')
  end

  it 'Create new category link Should go to the new category page' do
    visit user_groups_path(@user)
    first(:link, 'Create new Category').click

    expect(page).to have_content('Add New Category')
  end

  it 'Should page have (Create new Category) Button' do
    visit user_groups_path(@user)
    first(:link, @group.name).click

    expect(page).to have_content('Total amount of transactions')
  end
end
