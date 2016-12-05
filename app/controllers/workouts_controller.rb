class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_workout, only: [:show, :edit, :update, :destroy]

  def index
    @workouts = Workout.all.order('created_at DESC')
    @todo_lists = TodoList.all
    @random_list = ['Be healthy!', 'Keep Going!', 'Work hard!', 'Never give up!']
    @workout = Workout.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @workout = Workout.new
    @month_workouts = Workout.all.group_by { |m| m.date.month }
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    # respond_to do |format|
    #   format.html
    #   format.pdf do
    #     render pdf: 'report_workout',
    #            template: 'workout/show',
    #            file: "#{Rails.root}/views/workouts/show.erb",
    #            layout: 'pdf',
    #            wkhtmltopdf: WickedPdf.config[:exe_path],
    #            show_as_html: params[:debug],
    #            locals: { workout: @workout }
    #   end
    # end
  end

  def update
    if @workout.update_attributes(workout_params)
      redirect_to @workout
    else
      render 'form'
    end
  end

  def destroy
    @workout.destroy
    redirect_to root_path
  end

  def history
    @history_x = []
    @history_y = []
    @workouts = Workout.all
    @workouts.each do |workout|
      @history_x << workout.length
      @history_y << workout.time
    end

    respond_to do |format|
      format.json { render json: {'labels' => @history_x, 'values' => @history_y} }
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:workout, :date, :mood, :length, :time)
  end

  def find_workout
    @workout = Workout.find(params[:id])
  end
end
