module Admin
  class CategoriesController < Admin::BaseController

    crudify :category,
            :title_attribute => 'category_name', :xhr_paging => true
            
    def index
      @categories = Category.all
    end


    def create
      @category = Category.new(params[:category])
      if params[:category][:ancestry] != "0"
        @category.parent = Category.find(params[:category][:ancestry])
      else
        @category.parent = nil
      end
      if @category.save
       redirect_to :action => "index", :notice => "Category was successfully Created"
      else
        render :action => "new"
      end
    end
    
    def update
      @category = Category.find(params[:id])
      
      if params[:category][:ancestry] != "0"
        @category.parent = Category.find(params[:category][:ancestry])
      else
        @category.parent = nil
        params[:category][:ancestry] = nil
      end
      
      @category.category_name = params[:category][:category_name]
      @category.category_short_description = params[:category][:category_short_description]
      @category.category_description = params[:category][:category_description]
      @category.category_image_id = params[:category][:category_image_id]
      
      logger.debug(@category.inspect)
      logger.debug(@category.parent.inspect)
      logger.debug(@category.children.inspect)
      
      if @category.save
        redirect_to :action => "index", :notice => "Category was successfully updated"
      else
        render :action => "edit"
      end
    end
  end
end
