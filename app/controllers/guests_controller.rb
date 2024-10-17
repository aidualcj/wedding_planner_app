class GuestsController < ApplicationController
  before_action :set_event
  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  def index
    @event = Event.find(params[:event_id])
    @guests = @event.guests
  end

  def show
    # Affiche les détails d'un invité
  end

  def new
    @guest = @event.guests.new
  end

  def create
    @guest = @event.guests.new(guest_params)
    if @guest.save
      redirect_to event_guests_path(@event), notice: 'Guest was successfully added.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @guest.update(guest_params)
      redirect_to event_guest_path(@event, @guest), notice: 'Guest was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @guest.destroy
    redirect_to event_guests_path(@event), notice: 'Guest was successfully removed.'
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_guest
    @guest = @event.guests.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :email, :phone_number, :group, :diet, :rsvp_status, :event_id, :primary_guest_id)
  end
end
