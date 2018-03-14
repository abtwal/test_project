class UsersController < ActionController::Base
  attr_reader :user
  before_action :find_by_id, only: [:show, :edit, :update]

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :edit
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      redirect_back(fallback_location: new_user_path)
    else
      render :edit
    end
  end

  private

  def find_by_id
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name,
                                                  :last_name,
                                                  :email,
                                                  :email_confirmation,
                                                  :country,
                                                  :city)
  end
end
