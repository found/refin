Refinery::Application.routes.draw do
  match '/donate' => "programs#donate"
  resources :programs, :only => [:index, :show]
  
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :programs, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
  
  match 'programs/checkout/:id' => "programs#checkout"
  match 'programs/process_program/:id' => "programs#process_program"
end
