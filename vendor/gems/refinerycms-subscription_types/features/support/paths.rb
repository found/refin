module NavigationHelpers
  module Refinery
    module SubscriptionTypes
      def path_to(page_name)
        case page_name
        when /the list of subscription_types/
          admin_subscription_types_path

         when /the new subscription_type form/
          new_admin_subscription_type_path
        else
          nil
        end
      end
    end
  end
end
