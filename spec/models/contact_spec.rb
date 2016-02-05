require 'rails_helper'

describe Contact do 
	it "is valid with a name and email" do
		contact = Contact.new(
			name: 'Aaron',
			email: 'tester@example.com')
		expect(contact).to be_valid
	end 

	it "is invalid without a name" do
		contact = Contact.new(name: nil)
		contact.valid?
		expect(contact.errors[:name]).to include("can't be blank")
	end

	it "is invalid without an email address" do 
		contact = Contact.new(email: nil)
		contact.valid?
		expect(contact.errors[:email]).to include("can't be blank")
	end 
end 