Refinery::Application.routes.draw do
  match '/news/latest' => "news_items#latest"
  match '/news/newsletters' => "news_items#newsletters"
  match '/news/releases' => "news_items#releases"
  resources :news, :as => :news_items, :controller => :news_items, :only => [:show, :index]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :news, :except => :show, :as => :news_items, :controller => :news_items
    
    resources :news_items, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end

