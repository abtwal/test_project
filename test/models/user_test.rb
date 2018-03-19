require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.create(first_name: 'first_name', last_name: 'last_name', email: 'email@example', email_confirmation: 'email@example', country: Country.first, city: City.first)
  end

  test "creation" do
    user = User.new(first_name: 'first_name', last_name: 'last_name', email: 'email@example', email_confirmation: 'email@example', country: Country.first, city: City.first)
    assert user.save
  end

  test "first name cannot be blank" do
    @user.first_name = nil
    @user.save
    assert_equal ["can't be blank"], @user.errors.messages[:first_name]
  end

  test "last name cannot be blank" do
    @user.last_name = nil
    @user.save
    assert_equal ["can't be blank"], @user.errors.messages[:last_name]
  end

  test "email cannot be blank" do
    @user.email = nil
    @user.save
    assert_equal ["can't be blank"], @user.errors.messages[:email]
  end

  test "country cannot be blank" do
    @user.country = nil
    @user.save
    assert_equal ["must exist"], @user.errors.messages[:country]
  end

  test "city cannot be blank" do
    @user.city = nil
    @user.save
    assert_equal ["must exist"], @user.errors.messages[:city]
  end

  test "email must be confirmed" do
    @user.email = 'email@example1'
    @user.save
    assert_equal ["has an invalid value"], @user.errors.messages[:email_confirmation]
  end
end
