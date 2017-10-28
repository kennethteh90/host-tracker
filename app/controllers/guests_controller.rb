class GuestsController < ApplicationController

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
    @guests = Guest.all
  end

  def to_export
    @guest = Guest.find(params[:id])
    @guest.toggle(:to_export).save
    redirect_to guests_path
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :age, :description, :hostconnected, :whereseated, :leaderorpastor, :tobeconnected, :actionplan, :to_export)
  end

end
