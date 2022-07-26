class PingsController < ApplicationController
  # POST /pings or /pings.json
  def create
    respond_to do |format|
      format.html { redirect_to new_ping_path, notice: "Ping was successfully created." }
    end
  end
end
