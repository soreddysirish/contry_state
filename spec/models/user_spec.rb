require 'rails_helper'

describe User do
   context "when first created" do
     it "is not empty" do
       users=User.new(name:'sirish',mobile:"9999",city:'bangalore')
      # users.should be_empty
       expect(users).to eq be_empty
       users.valid?
        end
         it {should validate_presence_of :city}
     end
 end
