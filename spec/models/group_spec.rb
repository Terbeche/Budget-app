require 'rails_helper'
RSpec.describe Group, model: :Group do
  describe 'Tests for Group model validation' do
    @user = User.new(name: 'Test', email: 'termus96@gmail.com', password: '123456')

    subject { Group.new(author: @user, name: 'Test operation', icon: 'https://cdn-icons-png.flaticon.com/512/8031/8031650.png') }
    before { subject.save }

    it 'name should be present and not blank' do
      subject.name = nil
      expect(subject).to_not be_valid
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'name should not exceed 50 characters' do
    end

    it 'amount should be present and not blank' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'amount should be a numerical value' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end
end
