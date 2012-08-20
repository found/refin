module NavigationHelpers
  module Refinery
    module Businesses
      def path_to(page_name)
        case page_name
        when /the list of businesses/
          admin_businesses_path

         when /the new business form/
          new_admin_business_path
        else
          nil
        end
      end
    end
  end
end
