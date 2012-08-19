Refinery::Application.routes.draw do
  match '/contacts/complete' => "contacts#complete"
  match '/contacts/newsletter_signup' => "contacts#newsletter_signup"
  match '/contacts/newsletter_complete' => "contacts#newsletter_complete"
  resources :contacts
  
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    match 'contacts/show/(:id)' => 'contacts#show'
    match "contacts/export_to_csv" => "contacts#export_to_csv"
    resources :contacts do
      collection do
        post :update_positions
      end
    end
  end
end
