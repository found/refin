module Admin
  class ProgramsController < Admin::BaseController

    crudify :program,
            :title_attribute => 'program_name',
            :xhr_paging => true
    def index
      @programs = Program.all
    end        
            
    def update
      @program = Program.find(params[:id])
      @program.update_attributes(params[:program])
      @program.categories = Category.find(params[:category_ids]) if params[:category_ids]
      if @program.save
        redirect_to "/refinery/programs"
      else
        redirect_to :back
      end
    end
    
    def create
      @program = Program.new(params[:program])
      @program.categories = Category.find(params[:category_ids]) if params[:category_ids]
      
      if @program.save
        redirect_to "/refinery/programs/#{@program.id}/edit", :notice => "Successfully saved this program"
      else
        redirect_to :back, :error => "Saving program failed.  Check fields before continuing."
      end
    end
    
  end
end
