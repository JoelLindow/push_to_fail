class FailuresController < ApplicationController
  before_action :set_failure, only: [:show, :edit, :update, :destroy]

  def about
    #THIS IS FOR LINKS TO FEATURES AND DASHBOARDS
    #/dashboard/about
  end

  def dashboard
    # THIS IS FOR ALL USER FAILURES TOP SCORE PAGE /failures/index.html.erb
    @pushup_record = Failure.where(kind: "Pushups").order(:count).last
    @situp_record = Failure.where(kind: "Situps").order(:count).last
    @jump_record = Failure.where(kind: "Jumping Jacks").order(:count).last
    @squat_record = Failure.where(kind: "Squats").order(:count).last
  end

  def index
    if params["kind"]
      @failures = Failure.where(kind: params["kind"]).order(count: :desc)
      @kind = params["kind"]
    else
      @failures = Failure.all.order(count: :desc)
    end
  end

  # GET /failures/new
  def new
    @failure = Failure.new
  end


  def create
    @failure = Failure.new(failure_params)

    if @failure.save
      redirect_to root_path, notice: 'Failure Record was successfully created.'
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
    params.require(:failure).permit(:kind, :count)
  end
end
