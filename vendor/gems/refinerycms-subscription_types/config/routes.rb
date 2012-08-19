Refinery::Application.routes.draw do
  resources :subscription_types, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :subscription_types, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
