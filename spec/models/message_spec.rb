require 'rails_helper'
require 'vcr'

describe Message, :vcr => true do
  it {should have_many(:contacts).through(:recipients) }

  it "doesn't save the message if twilio gives an error" do
    message = Message.new(:body => 'hi', :to => '1111111', :from => '5413593264')
    expect(message.save).to eq false
  end

  it 'adds an error if the to number is invalid' do
    message = Message.new(:body => 'hi', :from => '5413593264', :to => '1111111')
    message.save
    expect(message.errors.messages[:base]).to eq ["The 'To' number 1111111 is not a valid phone number."]
  end
end


