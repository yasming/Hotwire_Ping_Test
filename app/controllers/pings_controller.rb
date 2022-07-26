class PingsController < ApplicationController
  # POST /pings or /pings.json
  def create
    respond_to do |format|
      format.html { redirect_to pings_url, notice: "Ping was successfully created." }
      format.json { render :show, status: :created, location: @ping }
    end
  end
end
