class FailuresController < ApplicationController
  before_action :set_failure, only: [:show, :edit, :update, :destroy]

  def about
    # THIS IS THE ROOT PAGE. ALSO ACCESSIBLE BY CLICKING THE BANNER LOGO
    #/dashboard/about
    @new_user = User.last
  end

  def dashboard
    # THIS IS FOR ALL USER FAILURES TOP SCORE PAGE /failures/index.html.erb
    @pushup_records = Failure.where(kind: "Pushups").order(count: :desc).first(15)
    @situp_records = Failure.where(kind: "Situps").order(count: :desc).first(15)
    @jump_records = Failure.where(kind: "Jumping Jacks").order(count: :desc).first(15)
    @squat_records = Failure.where(kind: "Squats").order(count: :desc).first(15)
  end

  def index
    if params["kind"]
      @failures = Failure.where(kind: params["kind"]).order(count: :desc)
      @kind = params["kind"]
    else
      @failures = Failure.all.order(id: :desc)
    end
  end

  # GET /failures/new
  def new
    @failure = Failure.new
  end


  def create
    @failure = Failure.new(failure_params)

    if @failure.save
      redirect_to your_failures_path, notice: 'Failure Record was successfully created.'
    else
      render :new
    end
  end

  # DELETE /failures/1
  # def destroy
  #   @failure.destroy
  #   redirect_to failures_url, notice: 'Failure was successfully destroyed.'
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_failure
    @failure = Failure.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def failure_params
    params.require(:failure).permit(:kind, :count, :user_id)
  end
end
