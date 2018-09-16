require 'rails_helper'

RSpec.describe User, type: :model do
  context "first test suite" do
    it "passes the test" do
      user = User.create!(email: 'natalie@gmail.com', password: '12121212')
      expect(user.email).to eq('natalie@gmail.com')
    end
  end

  context "second test suite" do
    it "has not logged in yet" do
      user = User.create!(email: 'natalie@gmail.com', password: '12121212')
      expect(user.sign_in_count).to eq(0)
    end

    it "has nickname" do
      user = User.create!(email: 'natalie@gmail.com', password: '12121212', nickname: 'nat')
      expect(user.nickname).to eq('nat')
    end
  end
end
