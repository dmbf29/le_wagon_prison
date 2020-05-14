class ConvictionsController < ApplicationController
  def new
    @conviction = Conviction.new
    @criminal = Criminal.find(params[:criminal_id])
    # @crimes = Crime.order(name: :asc)
    @crimes = Crime.where.not(id: @criminal.crimes).order(name: :asc)
  end

  def create
    @criminal = Criminal.find(params[:criminal_id])
    @crimes = Crime.where(id: params[:conviction][:crime_id])
    @crimes.each do |crime|
      Conviction.create(
        criminal: @criminal,
        crime: crime
      )
    end
    redirect_to prison_path(@criminal.prison)

    # @conviction = Conviction.new(conviction_params)
    # @conviction.criminal = @criminal
    # if @conviction.save
    #   redirect_to prison_path(@criminal.prison)
    # else
    #   @crimes = Crime.where.not(id: @criminal.crimes).order(name: :asc)
    #   render :new
    # end
  end

  private

  def conviction_params
    params.require(:conviction).permit(:crime_id)
  end
end
