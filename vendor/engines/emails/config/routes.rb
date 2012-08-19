Refinery::Application.routes.draw do
  resources :emails, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    match "/emails/mail_a_test" => "emails#mail_a_test"
    resources :emails, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
