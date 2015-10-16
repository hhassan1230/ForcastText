require 'rails_helper'

RSpec.describe User, type: :model do

  let(:ph_num) { "5193088399" }
  let(:user) { User.new(phone_number: ph_num) }

  it "can create a user" do 
    user.save
    expect(user).to be_valid
  end

  it "requires a phone number" do 
    user.phone_number = nil
    expect(user).to_not be_valid
  end

  it "must have a 10-digit phone number" do 
    user.phone_number = "1234567"
    user.save
    expect(user).to_not be_valid

    user.phone_number = "1234567890"
    user.save
    expect(user).to be_valid
  end

  it "can set a user's name" do 
    user.name = "Solid Snake"
    user.save
    expect(User.find_by(name: "Solid Snake")).to eq(user)
  end

end
