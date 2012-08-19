class PagesController < ApplicationController

  # This action is usually accessed with the root path, normally '/'
  def home
    logger.debug("HOME CALL")
    error_404 unless (@page = Page.where(:link_url => '/').first).present?
    @page.match_all_tags
  end

  def show
    @page = Page.find("#{params[:path]}/#{params[:id]}".split('/').last)
    logger.debug("Page found, now matching parts.")
    
    logger.debug("Part parsing done.")
    
    if @page.try(:live?) || (refinery_user? && current_user.authorized_plugins.include?("refinery_pages"))
      # if the admin wants this to be a "placeholder" page which goes to its first child, go to that instead.
      logger.debug("Looky looky: #{@page.body}")
      if @page.skip_to_first_child && (first_live_child = @page.children.order('lft ASC').live.first).present?
        redirect_to first_live_child.url
      elsif @page.link_url.present?
        redirect_to @page.link_url and return
      end
    else
      error_404
    end
  end
end
