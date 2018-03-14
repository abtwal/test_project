class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :country, :city
  validates_confirmation_of :email, :message => "has an invalid value"
end
