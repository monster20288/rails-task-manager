class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    # Save data from form input
    @task.save
    # redirect_to to details page
    redirect_to taskurl_path(@task)
  end


  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
