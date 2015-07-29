class SelosController < ApplicationController

  def index
    @selos = Selos.all
    respond_to do |format|
      format.html
      format.json { render json: @selos }
    end
  end

end
