# Controller for Progresses
class ProgressesController < ApplicationController
  def index
    @progresses = Progress.all
    if params[:commit] == 'Edit'
      # progress_id = @progress.id
      puts '************'
      render :edit
    else
      @progress = Progress.new
    end
  end

  def show
    @progress = Progress.find(params[:id])
  end

  def new
    @progress = Progress.new
  end

  def create
    @progress = Progress.new(progress_params)
    if @progress.save
      redirect_to progresses_path
    else
      render :new
    end
  end

  def edit
    @progress = Progress.find(params[:id])
    respond_to do |format|
      format.json { render json: { 'id' => @progress.id,
                                   'weight' => @progress.weight,
                                   'year' => @progress.date.year,
                                   'month' => @progress.date.month,
                                   'day' => @progress.date.day } }
    end
  end

  def update
    @progress = Progress.find(params[:id])
    if @progress.update_attributes(progress_params)
      redirect_to progresses_path
    else
      render @progress
    end
  end

  def destroy
    @progress = Progress.find(params[:id])
    @progress.destroy
    redirect_to progresses_path
  end

  private

  def progress_params
    params.require(:progress).permit(:weight, :date)
  end

  def new_progress
    params[:commit] == 'New Progress'
  end

  def edit_progress
    params[:commit] == 'Edit Progress'
  end
end
