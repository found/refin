module NavigationHelpers
  module Refinery
    module Meetings
      def path_to(page_name)
        case page_name
        when /the list of meetings/
          admin_meetings_path

         when /the new meeting form/
          new_admin_meeting_path
        else
          nil
        end
      end
    end
  end
end
