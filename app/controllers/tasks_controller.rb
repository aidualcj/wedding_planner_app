class TasksController < ApplicationController
  before_action :set_event

  def index
    @categories = @event.categories.includes(:tasks) || []
    @tasks_without_category = @event.tasks.where(category_id: nil)
    @task = Task.new
  end

  def create
    if params[:new_category].present?
      category = @event.categories.create(name: params[:new_category])
      @task = @event.tasks.build(task_params.merge(category_id: category.id))
    else
      @task = @event.tasks.build(task_params)
    end

    # Gestion de l'assignation à un guest ou à un nom libre
    if params[:task][:guest_id].present?
      @task.guest_id = params[:task][:guest_id]
    else
      @task.guest_id = nil
      @task.assigned_to_name = params[:task][:assigned_to_name] if params[:task][:assigned_to_name].present?
    end

    if @task.save
      redirect_to event_tasks_path(@event), notice: 'Tâche ajoutée avec succès.'
    else
      render :index, alert: 'Erreur lors de la création de la tâche.'
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def task_params
    params.require(:task).permit(:name, :due_date, :status, :category_id, :assigned_to_name, :guest_id)
  end
end
