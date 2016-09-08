class WorkoutsController < ApplicationController
  before_action :find_workout, only:[:show, :edit, :update, :destroy]

  def index
    @workouts = Workout.all.order("created_at DESC")
  end

  def new
    @workout = Workout.new
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
    @workout = Workout.new(workout_params)
  end

  def show
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

  private

  def workout_params
    params.require(:workout).permit(:workout, :date, :mood, :length, :time)
  end

  def find_workout
    @workout = Workout.find(params[:id])
  end

end
