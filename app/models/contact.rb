class Contact < ActiveRecord::Base
  validates_presence_of :fname, :lname,:email
  validates  :lname, format: { with: /\A[a-zA-Z]+\z/,
   message: "only allows letters" }

   validates :mobile,numericality: {only_integer: true,message: 'please enter numbers'},length:{is: 10}

   validates :fname, exclusion: { in: %w(www us ca jp blah),
      message: "%{value} is reserved." }

   validates  :email, uniqueness: true, on: :create
   validates  :email, uniqueness: true, on: :update,if: :email_changed?
   validates :email,email: {strict_mode: true,message: 'please enter correct emaiid'}
 end
