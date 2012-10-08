module Admin
  class PagesController < Admin::BaseController

    crudify :page,
            :conditions => nil,
            :order => "lft ASC",
            :include => [:slugs, :translations, :children],
            :paging => false

    rescue_from FriendlyId::ReservedError, :with => :show_errors_for_reserved_slug

    after_filter lambda{::Page.expire_page_caching}, :only => [:update_positions]

    def new
      @page = Page.new
      Page.default_parts.each_with_index do |page_part, index|
        @page.parts << PagePart.new(:title => page_part, :position => index)
      end
    end
    
    def clear_cache
      File.delete("#{RAILS_ROOT}/public/index.html") if File.file?("#{RAILS_ROOT}/public/index.html")
      File.delete("#{RAILS_ROOT}/public/front.html") if File.file?("#{RAILS_ROOT}/public/front.html")
      File.delete("#{RAILS_ROOT}/public/inside.html") if File.file?("#{RAILS_ROOT}/public/inside.html")
      File.delete("#{RAILS_ROOT}/public/town-police-dept.html") if File.file?("#{RAILS_ROOT}/public/town-police-dept.html")
      File.delete("#{RAILS_ROOT}/public/downloads.html") if File.file?("#{RAILS_ROOT}/public/downloads.html")
      FileUtils.rm_rf("#{RAILS_ROOT}/public/about-cam/")
      FileUtils.rm_rf("#{Rails.root}/public/about")
      FileUtils.rm_rf("#{Rails.root}/public/about-us")
      FileUtils.rm_rf("#{Rails.root}/public/announcements")
      FileUtils.rm_rf("#{Rails.root}/public/areas")
      FileUtils.rm_rf("#{Rails.root}/public/case_studies")
      FileUtils.rm_rf("#{Rails.root}/public/equipments")
      FileUtils.rm_rf("#{Rails.root}/public/faqs")
      FileUtils.rm_rf("#{Rails.root}/public/gallery")
      FileUtils.rm_rf("#{Rails.root}/public/home")
      FileUtils.rm_rf("#{Rails.root}/public/institutions")
      FileUtils.rm_rf("#{Rails.root}/public/instructors")
      FileUtils.rm_rf("#{Rails.root}/public/locations")
      FileUtils.rm_rf("#{Rails.root}/public/media-center")
      FileUtils.rm_rf("#{Rails.root}/public/members")
      FileUtils.rm_rf("#{Rails.root}/public/our-staff")
      FileUtils.rm_rf("#{Rails.root}/public/pages")
      FileUtils.rm_rf("#{Rails.root}/public/programs")
      FileUtils.rm_rf("#{Rails.root}/public/showcases")
      FileUtils.rm_rf("#{Rails.root}/public/solutions")
      FileUtils.rm_rf("#{Rails.root}/public/updates")
      FileUtils.rm_rf("#{Rails.root}/public/web")
      FileUtils.rm_rf("#{Rails.root}/public/workshops")
      FileUtils.rm_rf("#{Rails.root}/public/town-departments")
      FileUtils.rm_rf("#{Rails.root}/public/town-government")
      redirect_to :back, :notice => "Cache cleared successfully" and return
    end

  protected

    # We can safely assume Refinery::I18n is defined because this method only gets
    # Invoked when the before_filter from the plugin is run.
    def globalize!
      unless action_name.to_s == 'index'
        super

        # Check whether we need to override e.g. on the pages form.
        unless params[:switch_locale] || @page.nil? || @page.new_record? || @page.slugs.where({
          :locale => Refinery::I18n.current_locale}
        ).nil?
          @page.slug = @page.slugs.first if @page.slug.nil? && @page.slugs.any?
          Thread.current[:globalize_locale] = @page.slug.locale if @page.slug
        end
      else
        # Always display the tree of pages from the default frontend locale.
        Thread.current[:globalize_locale] = params[:switch_locale].try(:to_sym) || ::Refinery::I18n.default_frontend_locale
      end
    end

    def show_errors_for_reserved_slug(exception)
      flash[:error] = t('reserved_system_word', :scope => 'admin.pages')
      if action_name == 'update'
        find_page
        render :edit
      else
        @page = Page.new(params[:page])
        render :new
      end
    end

  end
end
