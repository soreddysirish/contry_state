class User < ActiveRecord::Base
 validates_presence_of :name, :address, :city
 validates :mobile, :presence => true
end
