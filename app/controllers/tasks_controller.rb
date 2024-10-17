class TasksController < ApplicationController
  before_action :set_event

  def index
    @categories = @event.categories.includes(:tasks)
    @tasks_without_category = @event.tasks.where(category_id: nil)
    @task = @event.tasks.build # Associe la tâche à l'événement
  end

  def create
    @task = @event.tasks.build(task_params)
    if @task.save
      redirect_to event_tasks_path(@event), notice: 'Tâche ajoutée avec succès.'
    else
      # Afficher les erreurs sans redirection pour conserver le contenu des champs
      @categories = @event.categories.includes(:tasks)
      @tasks_without_category = @event.tasks.where(category_id: nil)
      render :index, alert: 'Erreur lors de la création de la tâche.'
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def task_params
    params.require(:task).permit(:name, :assigned_to, :due_date, :category_id)
  end
end
