::Refinery::Application.routes.draw do
  filter(:refinery_locales) if defined?(RoutingFilter::RefineryLocales) # optionally use i18n.

  root :to => 'pages#home'

  match 'wymiframe(/:id)', :to => 'refinery/fast#wymiframe', :as => :wymiframe

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    root :to => 'dashboard#index'
    match "/dialogs/(:id)?(:wymeditor)" => "pages_dialogs#link_to"
    resources :dialogs, :only => :show
  end

  match '/refinery/update_menu_positions', :to => 'admin/refinery_core#update_plugin_positions'

  match '/sitemap.xml' => 'sitemap#index', :defaults => { :format => 'xml' }

  match "member_root" => redirect("/donate")
  # Marketable URLs should be appended to routes by the Pages Engine.
  # Catch all routes should be appended to routes by the Core Engine.
  match "/rrt" => redirect("/programs/41")
  match "/salt" => redirect("/programs/22")
end
