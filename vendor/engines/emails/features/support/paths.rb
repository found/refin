module NavigationHelpers
  module Refinery
    module Emails
      def path_to(page_name)
        case page_name
        when /the list of emails/
          admin_emails_path

         when /the new email form/
          new_admin_email_path
        else
          nil
        end
      end
    end
  end
end
