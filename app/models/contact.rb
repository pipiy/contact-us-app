class Contact < ActiveRecord::Base
   attr_accessible :name, :email, :description

   validates :name, :description, :email, :presence => true
end
