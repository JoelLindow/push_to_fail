class FailuresController < ApplicationController
  before_action :set_failure, only: [:show, :edit, :update, :destroy]

  def about
    # THIS IS THE ROOT PAGE. ALSO ACCESSIBLE BY CLICKING THE BANNER LOGO
    #/dashboard/about
  end

  def dashboard
    # THIS IS FOR ALL USER FAILURES TOP SCORE PAGE /failures/index.html.erb
    # @pushup_records = Failure.where(kind: "Pushups").order(count: :desc).first(15)
    # @situp_records = Failure.where(kind: "Situps").order(count: :desc).first(15)
    # @jump_records = Failure.where(kind: "Jumping Jacks").order(count: :desc).first(15)
    # @squat_records = Failure.where(kind: "Squats").order(count: :desc).first(15)


    workout_names = Kind.all.pluck(:name)

    @top_scores_payload = {}

    workout_names.each do |x|
      @top_scores_payload[x] = Failure.includes(:kind).where("kinds.name"=> x).order(count: :desc).first(15)
      # binding.pry
    end
    # @knee_pushups = Kind.where(name: "Knee Pushups").order(count: :desc).first(15)
    # @situp_records = Kind.where(name: "Situps").order(count: :desc).first(15)
    # @crunch_records = Kind.where(name: "Crunches").order(count: :desc).first(15)
    # @jumping_jack_records = Kind.where(name: "Jumping Jacks").order(count: :desc).first(15)
    # @squat_records = Kind.where(name: "Squats").order(count: :desc).first(15)



  end

  def index
    if params["kind"]
      @failures = Failure.where(kind: params["kind"]).order(count: :desc)
      @kind = params["kind"]
    else
      @failures = Failure.all.order(id: :desc)
    end
    @new_user = User.last

  end

  # GET /failures/new
  def new
    @failure = Failure.new
    @kinds = Kind.all.pluck(:name)
  end


  def create
    @failure = Failure.new(failure_params)
    @failure.kind = Kind.find_by(name: params["failure"]["kind"])


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
    params.require(:failure).permit(:count, :user_id, :kind_id)
  end
end
