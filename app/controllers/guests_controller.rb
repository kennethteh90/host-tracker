class GuestsController < ApplicationController

  before_action :authenticate_user!

  def index
    @guests = Guest.all.order(:created_at)
    @guests_to_export = Guest.where("to_export = true")
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    @guest.save
    redirect_to guests_path
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    if @guest.update(guest_params)
      redirect_to guests_path
    else
      render :edit
    end
  end

  def destroy
    Guest.destroy(params[:id])
    redirect_to guests_path
  end

  def export
    redirect_to guests_path
    @guests = Guest.all.order(:created_at)
  end

  def to_export
    @guest = Guest.find(params[:id])
    @guest.toggle(:to_export).save
    @guests = Guest.all.order(:created_at)
    @guests_to_export = Guest.where("to_export = true")
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :age, :heard, :purpose, :church, :description, :hostconnected, :whereseated, :actionplan, :to_export)
  end

end
