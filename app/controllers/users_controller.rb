class UsersController < ApplicationController
  attr_reader :user
  before_action :find_by_id, only: [:show, :update]
  before_action :cities, only: [:new, :create]

  def show
    UserMailer.with(user: @user).welcome_email.deliver_now if params[:send]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/users/#{@user.id}"
    else
      render :new
    end
  end

  def update
    if @user.update_attributes(user_params)
      redirect_back(fallback_location: new_user_path)
    else
      render :edit
    end
  end

  def update_cities
    @cities = City.where("country_id = ?", params[:country_id])
    respond_to do |format|
      format.js
    end
  end

  private

  def cities
    @countries = Country.all
    @cities = City.where("country_id = ?", Country.first.id)
  end

  def find_by_id
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name,
                                                  :last_name,
                                                  :email,
                                                  :email_confirmation,
                                                  :country_id,
                                                  :city_id)
  end
end
