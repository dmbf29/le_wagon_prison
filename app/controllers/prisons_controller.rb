class PrisonsController < ApplicationController
  before_action :set_prison, only: [:show]

  # GET /prisons/1
  def show
  end

  private

  def set_prison
    @prison = Prison.find(params[:id])
  end

end
