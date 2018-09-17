class FailuresController < ApplicationController
  before_action :set_failure, only: [:show, :edit, :update, :destroy]

  # GET /failures
  def index
    # @failures = Failure.all
    @pushup_record = Failure.where(kind: "Pushups").order(:count).last
    @situp_record = Failure.where(kind: "Situps").order(:count).last
    @jump_record = Failure.where(kind: "Jumping Jacks").order(:count).last
    @squat_record = Failure.where(kind: "Squats").order(:count).last
  end

  # GET /failures/1
  def show
  end

  # GET /failures/new
  def new
    @failure = Failure.new
  end

  # GET /failures/1/edit
  def edit
  end

  # POST /failures
  def create
    @failure = Failure.new(failure_params)

    if @failure.save
      redirect_to @failure, notice: 'Failure was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /failures/1
  def update
    if @failure.update(failure_params)
      redirect_to @failure, notice: 'Failure was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /failures/1
  def destroy
    @failure.destroy
    redirect_to failures_url, notice: 'Failure was successfully destroyed.'
  end

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
