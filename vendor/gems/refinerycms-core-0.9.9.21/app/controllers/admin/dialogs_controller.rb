module Admin
  class DialogsController < Admin::BaseController
    
    def index
      redirect_to refinery.admin_root_path
    end

    def show
      logger.debug("PARAMS ***** : #{params.inspect}")
      logger.debug("DIALOG TYPE ***** : #{@dialog_type.inspect}")
      if (@dialog_type = params[:id].try(:downcase))
        url_params = params.reject {|key, value| key =~ /(action)|(controller)/}

        @iframe_src = if @dialog_type == 'image'
          insert_admin_images_url(url_params.merge(:id => nil, :modal => true))
        elsif @dialog_type == 'link'
          link_to_admin_pages_dialogs_url(url_params.merge(:id => nil))
        end

        render :layout => false

      else
        render :nothing => true
      end
    end

    def from_dialog?
      true
    end

  end
end
