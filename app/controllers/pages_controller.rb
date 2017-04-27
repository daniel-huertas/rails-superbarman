class PagesController < ApplicationController
  # For now we will skip authentication on every action.
  # Otherwise we would append the commented out code.
  skip_before_action :authenticate_user! # ', only: [:some_action, :another_action, etc...]
  def landing
  end

  def home
    @bartenders = Bartender.order(rating: :desc).limit(3)
    @party      = Party.new
  end
end
