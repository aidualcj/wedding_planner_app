class CategoriesController < ApplicationController
  before_action :set_event
  before_action :set_category, only: [:show]

  def show
    @tasks = @category.tasks
    @task = @category.tasks.build
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_category
    @category = @event.categories.find(params[:id])
  end
end
