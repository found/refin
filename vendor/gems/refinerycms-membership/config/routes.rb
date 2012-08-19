Refinery::Application.routes.draw do
  devise_for :members, :controllers => {
    :sessions => 'sessions',
    :registrations => 'members',
    :passwords => 'passwords'
  }, :path_names => {
    :sign_out => 'logout',
    :sign_in => 'login',
    :sign_up => 'register'
  }
  
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    match "/memberships/update_donor_profile/(:id)/(:billing_id)" => "memberships#update"
    match "/memberships/update_mailing/(:id)" => "memberships#update_mailing"
    match "/memberships/edit_mailing/(:id)" => "memberships#edit_mailing"
    match "/memberships/edit_country_listing" => "memberships#edit_country_listing"
    match "/memberships/edit_country_item/(:id)" => "memberships#edit_country_item"
    match "/memberships/update_country_item/(:id)" => "memberships#update_country_item"
    match "/memberships/destroy_country_item/(:id)" => "memberships#destroy_country_item"
    match "/memberships/new_country_item" => "memberships#new_country_item"
    match "/memberships/create_country_item" => "memberships#create_country_item"
    match "/memberships/export_to_csv" => "memberships#export_to_csv"
    resources :memberships 
    resources :page_roles, :only => [] do
      collection do
        post 'destroy_multiple'
        post 'create_multiple'
      end
    end
    resources :user_roles, :only => [:update] do
      collection do
        post 'destroy_multiple'
        post 'create_multiple'
      end
    end
  end

  match '/addresses/my_addresses' => "addresses#my_addresses"
  
  resources :members, :except => [:destroy] 
  resources :addresses
  
end
