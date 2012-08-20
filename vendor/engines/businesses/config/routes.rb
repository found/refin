Refinery::Application.routes.draw do
  resources :businesses, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :businesses, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
