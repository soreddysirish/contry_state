require 'rails_helper'

# #RSpec.describe Contact, type: :model do
#   #pending "add some examples to (or delete) #{__FILE__}"
#     # it { should validate_presence_of(:fname) }
#     # it { is_expected.to validate_presence_of(:lname) }
#     # it "is valid with fname lname and email"
#     # it "is invalid without fname and lname email"
#     # it "adds 1+2 get 3" do
#     #   expect(1+3).to eq(5)
#     # end
#     describe Contact, type: :model do
#       context "validation for contact" do
#     it "\n should validate with fname lanme and email" do
#       contact=Contact.new(
#       fname: 'sirish',
#       lname: 'kumar',
#       email: 'ssireeshreddy@gmail.com',
#       mobile: 8888888888)
#       expect(contact).to be_valid
#     end
#      #it {should validate_presence_of(:fname)}
#      it "is invalid with out fname" do
#    contact=Contact.new(fname: 'sirish')
#    contact.valid?
#    #expect(contact.errors[:fname]).to include("con't be blank")
#    expect(contact[:fname]).not_to be_empty
#  end
#
#      it "is invalid without mobile number" do
#        contact=Contact.new(mobile: '9999999999')
#        expect(contact[:mobile]).to match(/^[0-9]*$/)
#        expect(contact[:mobile].length).to eq(10)
#      end
#    end
# end

describe "contact" do
   FactoryGirl.build(:contact) 
   it { should validate_presence_of(:fname) }
 end
