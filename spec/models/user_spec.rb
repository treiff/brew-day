require 'rails_helper'

describe User do
  before { @user = User.new(email: "newuser@test.com",
                            password: "heyThere45",
                            latitude: 41.605,
                            longitude: -120.559,
                            address: "34 test st., denver CO",
                            username: "tman") }

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:latitude) }
  it { should respond_to(:longitude) }
  it { should respond_to(:address) }
  it { should respond_to(:username) }

  it { should be_valid }

  describe "when username not present" do
    before { @user.username = '' }
    it { should_not be_valid }
  end

  describe "when email not present" do
    before { @user.email = ''}
    it { should_not be_valid}
  end

  describe "when password not present" do
    before { @user.password = ''}
    it { should_not be_valid}
  end

  describe "when address not present" do
    before { @user.address = ''}
    it { should_not be_valid}
  end

  describe "when email address already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.save
    end
    it { should_not be_valid }
  end

  describe "when username is already taken" do
    before do
      user_with_same_username = @user.dup
      user_with_same_username.save
    end
    it { should_not be_valid }
  end
end
