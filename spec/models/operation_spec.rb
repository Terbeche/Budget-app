require 'rails_helper'
RSpec.describe Operation, model: :Operation do
  describe 'Tests for Operation model validation' do
    @user = User.new(name: 'Test', email: 'termus96@gmail.com', password: '123456')
    @user.save
    subject { Operation.new(author: @user, name: 'Test operation', amount: 30) }
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

    it 'amount should be present and not blank' do
      subject.amount = nil
      expect(subject).to_not be_valid
    end

    it 'amount should be a numerical value' do
      subject.amount = 'five'
      expect(subject).to_not be_valid
    end
  end
end
