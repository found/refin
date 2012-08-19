module NavigationHelpers
  module Refinery
    module ContentHolders
      def path_to(page_name)
        case page_name
        when /the list of content_holders/
          admin_content_holders_path

         when /the new content_holder form/
          new_admin_content_holder_path
        else
          nil
        end
      end
    end
  end
end
