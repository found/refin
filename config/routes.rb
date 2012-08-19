CamDon::Application.routes.draw do
  match "/subscriptions/silent_post" => "subscriptions#silent_post"
  match "/subscriptions/silent_post_test" => "subscriptions#silent_post_test"
  match 'invoices/my_invoices' => "invoices#my_invoices"

  resources :transactions
  resources :invoices
  resources :payment_profiles
  resources :subscriptions
  resources :subscription_types

  match 'invoices(/:action(/:id(.:format)))', :controller =>"invoices"
  match 'donors(/:action(/:id(.:format)))', :controller =>"donor_dashboard"
  match 'payment_profile(/:action(/:id(.:format)))', :controller => "payment_profiles"
  
  match "/donors/remove_from_newsletter/(:id)" => "donor_dashboard#remove_from_newsletter"
  
  match "/donors/accept_adjustment/(:id)" => "donors#accept_adjustment"
  match "/donors/deny_adjustment/(:id)" => "donors#accept_adjustment"
  match "/subscriptions/change_payment/(:id)" => "subscriptions#change_payment"
  match "/subscriptions/update_payment/(:id)" => "subscriptions#update_payment"
  
  
end
