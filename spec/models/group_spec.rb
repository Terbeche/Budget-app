require 'rails_helper'
RSpec.describe Group, model: :Group do
  describe 'Tests for Group model validation' do
    @user = User.create(name: 'Test', email: 'termus96@gmail.com', password: '123456')

    subject { Group.new(author: @user, name: 'Test operation') }
    before { subject.save }

    it 'name should be present and not blank' do
      subject.name = nil
      expect(subject).to_not be_valid
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'name should not exceed 50 characters' do
      subject.name = 'test' * 50
      expect(subject).to_not be_valid
    end
  end
end
