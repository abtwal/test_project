class User < ActiveRecord::Base
  belongs_to :city
  belongs_to :country
  validates_presence_of :first_name, :last_name, :email, :country_id, :city_id
  validates_confirmation_of :email, :message => "has an invalid value"
end
