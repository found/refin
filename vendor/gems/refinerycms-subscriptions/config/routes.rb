Refinery::Application.routes.draw do
  resources :subscriptions, :only => [:show]
  
  match "/subscriptions/cancel_subscription/(:id)" => "subscriptions#cancel_subscription"
  match "/subscriptions/receipt_range/(:id)" => "subscriptions#receipt_range"
  match "/subscriptions/monthly_receipt/(:id)" => "subscriptions#monthly_receipt"
  
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    match "/subscriptions/show/(:id)" => "subscriptions#show"
    match "/subscriptions/export_to_csv" => "subscriptions#export_to_csv"
    match "/subscriptions/cancel_subscription/(:id)" => "subscriptions#cancel_subscription"
    match "/subscriptions/new_adjustment" => "subscriptions#new_adjustment"
    match "/subscriptions/create_adjustment" => "subscriptions#create_adjustment"
    match "/subscriptions/resend_email/(:id)" => "subscriptions#resend_email"
    
    resources :subscriptions, :except => :show do
      collection do
        post :update_positions
      end
    end
    
    resources :subscription_transactions
  end
end
