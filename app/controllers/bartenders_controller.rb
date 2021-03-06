class BartendersController < ApplicationController
skip_before_action :authenticate_user!
before_action :set_bartender, only: [:show]

  def index
    @bartenders = Bartender.all

    @party      = Party.new(party_params)
  end

  def show

  end

  def search
    location_query = params[:party][:address].split(',').map(&:squish)
    @bartenders = []
    location_query.each do |word|
      @bartenders += Bartender.where("location ILIKE ?", "%#{word}%")
    end
    @party = Party.new
    render :index
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bartender
    @bartender = Bartender.find(params[:id])
  end

  def party_params
    params.require(:party).permit(:theme, :size)
  end

end
