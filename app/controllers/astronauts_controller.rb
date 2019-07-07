class AstronautsController < ApplicationController
  def index
    @astronauts = Astronaut.all
    # @astronaut = Astronaut.find(params[:id])
    astronaut = Astronaut.new
    average_age = astronaut.average_age
  end
end
