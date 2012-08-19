module NavigationHelpers
  module Refinery
    module Orders
      def path_to(page_name)
        case page_name
        when /the list of orders/
          admin_orders_path

         when /the new order form/
          new_admin_order_path
        else
          nil
        end
      end
    end
  end
end
