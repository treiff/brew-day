require 'rails_helper'

describe User do
  before { @user = User.new(email: "newuser@test.com", 
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
end