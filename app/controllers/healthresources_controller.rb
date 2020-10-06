class HealthresourcesController < ApplicationController
  def index
  	@healthresources = HealthResource.all
  end

  def new
  	@healthresource = HealthResource.new
  end

  def show
    @healthresource = HealthResource.find(params[:id])
  end

  def create
  	@healthresource = HealthResource.new(healthresource_params)
  	if @healthresource.save
    	redirect_to root_path
  	else
    	render "new"
  	end
  end

  private

  def healthresource_params
    params.require(:healthresource).permit(:title, :description, :url)
  end  

end
