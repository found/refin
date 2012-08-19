module Admin
  class DashboardController < Admin::BaseController

    def index
      @contact_instances = ContactInstance.find(:all, :order => "created_at DESC", :limit => 10)
      @recent_activity = []

      Refinery::Plugins.active.each do |plugin|
        begin
          logger.debug("1")
          plugin.activity.each do |activity|
            logger.debug(activity.inspect)
            @recent_activity << activity.class.where(activity.conditions).
                                               order(activity.order).
                                               limit(activity.limit).
                                               all
          end
        rescue
          logger.warn "#{$!.class.name} raised while getting recent activity for dashboard."
          logger.warn $!.message
          logger.warn $!.backtrace.collect { |b| " > #{b}" }.join("\n")
        end
      end
      logger.debug("2")
      @recent_activity = @recent_activity.flatten.compact.sort { |x,y|
        y.updated_at <=> x.updated_at
      }.first(20)#.first(activity_show_limit=RefinerySetting.find_or_set(:activity_show_limit, 30))

      @recent_inquiries = defined?(Inquiry) ? Inquiry.latest(activity_show_limit) : []
    end

    def disable_upgrade_message
      RefinerySetting.set(:show_internet_explorer_upgrade_message, {
        :value => false,
        :scoping => 'refinery'
      })
      render :nothing => true
    end

  end
end
