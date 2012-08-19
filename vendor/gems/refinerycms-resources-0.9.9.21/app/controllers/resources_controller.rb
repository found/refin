class ResourcesController < ApplicationController

  def show
    logger.debug("In resource show")
    resource = Resources.find_by_file_uid(params[:id])
    
    if resource && resource.file_ext == "pdf"
      respond_to do |format|
        format.pdf { render :pdf => resource }
      end
    else
      redirect_to Dragonfly[:resources]
    end
  end
end
