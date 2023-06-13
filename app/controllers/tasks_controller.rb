class TasksController < ApplicationController
  def task
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def add
    @tasks = Task.new(task_params)
    @tasks.save
    redirect_to task_path(@tasks)
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(task_params)
    redirect_to task_path(@tasks)
  end

  def delete
    @tasks = Task.find(params[:id])
    @tasks.delete
    redirect_to task_path(@tasks)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
