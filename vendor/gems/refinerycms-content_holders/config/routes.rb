Refinery::Application.routes.draw do
  resources :content_holders, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :content_holders, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
