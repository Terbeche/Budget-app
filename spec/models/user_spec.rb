require 'rails_helper'
RSpec.describe User, model: :User do
  describe 'Tests for User model validation' do
    subject { User.new(name: 'Test', email: 'termus96@gmail.com', password: '123456') }
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

    it 'email should be present and not blank' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'email should not exceed 255 characters' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'password should be present and not blank' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it 'password should be at least 6 characters' do
      subject.password = nil
      expect(subject).to_not be_valid
    end
  end
end
