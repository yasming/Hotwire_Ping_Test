class PingsController < ApplicationController
  include PingsHelper
  # POST /pings or /pings.json
  def create
    respond_to do |format|
      format.turbo_stream { render 'create', locals: { time: get_duration}}
    end
  end
end
