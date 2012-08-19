Refinery::Application.routes.draw do
  match '/orders/add_program_to_cart/(:id)/(:amount)' => "orders#add_program_to_cart"
  match '/orders/add_program_to_cart_and_checkout/(:id)/(:amount)' => "orders#add_program_to_cart_and_checkout"
  match '/orders/remove_from_cart/(:id)' => "orders#remove_from_cart"
  match '/orders/checkout' => "orders#checkout"
  match '/orders/view_cart' => "orders#view_cart"
  match '/orders/update_order/(:id)' => "orders#update_order"
  match '/orders/process_subscriptions' => "orders#process_subscriptions"
  match '/orders/checkout_one_times' => "orders#checkout_one_times"
  match '/orders/process_one_times' => "orders#process_one_times"
  match '/orders/complete' => "orders#complete"   
  
  resources :orders, :only => [:index]
  
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    match '/orders/show/(:id)' => "orders#show"
    match "/orders/export_to_csv" => "orders#export_to_csv"
    match "/orders/reconcile_empty_orders" => "orders#reconcile_empty_orders"
    match "/orders/cancel_email_receipt/(:id)" => "orders#cancel_email_receipt"
    match "/orders/enable_email_receipt/(:id)" => "orders#enable_email_receipt"
    match "/orders/send_email_receipt/(:id)" => "orders#send_email_receipt"
    match "/orders/send_email_receipt_to_admin/(:id)" => "orders#send_email_receipt_to_admin"
    match "/orders/cancel_invoice/(:id)" => "orders#cancel_invoice"
    match "/orders/uncancel_invoice/(:id)" => "orders#uncancel_invoice"
    match "/orders/destroy/(:id)" => "orders#destroy"
    resources :orders, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
