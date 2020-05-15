require 'open-uri'

class CriminalsController < ApplicationController
  def new
    @prison = Prison.find(params[:prison_id])
    @criminal = Criminal.new
    @random_image_url = open('http://le-wagon-tokyo.herokuapp.com/batches/394/student').read
  end

  def create
    raise
    @prison = Prison.find(params[:prison_id])
    @criminal = Criminal.new(criminal_params)
    @criminal.prison = @prison
    if @criminal.save
      redirect_to prison_path(@prison)
    else
      render :new
    end
  end

  def destroy
    @criminal = Criminal.find(params[:id])
    @criminal.destroy
    redirect_to prison_path(@criminal.prison)
  end

  private

  def criminal_params
    params.require(:criminal).permit(:name, :sentence_days, :image_url, :photo)
  end
end
