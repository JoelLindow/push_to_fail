class UsersController < ApplicationController

  def dashboard
    #This should show user personal records as well as last 20 workouts
    #should also have link to ALL workouts page
    @pushup_record = Failure.where(kind: "Pushups", user_id: current_user.id).order(:count).last
    @situp_record = Failure.where(kind: "Situps", user_id: current_user.id).order(:count).last
    @jump_record = Failure.where(kind: "Jumping Jacks", user_id: current_user.id).order(:count).last
    @squat_record = Failure.where(kind: "Squats", user_id: current_user.id).order(:count).last
  end

  def index
    #This should be a table of ALL user workout records for the current_user
    @failures = Failure.where(user_id: current_user.id).order(count: :desc)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    # store all emails in lowercase to avoid duplicates and case-sensitive login errors:
    @user.email.downcase!

    if @user.save
      # User accessible views (your dashboard and your records) will throw errors if there isn't initial information in each category
      Failure.create(kind: "Pushups", count:0, user_id: @user.id)
      Failure.create(kind: "Situps", count:0, user_id: @user.id)
      Failure.create(kind: "Jumping Jacks", count:0, user_id: @user.id)
      Failure.create(kind: "Squats", count:0, user_id: @user.id)
      # If user saves in the db successfully:
      flash[:notice] = "Account created successfully!"
      redirect_to root_path
    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
      render :new
    end
  end

  private

  def user_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
