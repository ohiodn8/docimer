Rails.application.routes.draw do
  resources :footertexts
  resources :navtexts
  resources :logotexts
  resources :templates
  resources :sections, except: [:show, :new, :index]
  resources :categories
  resources :blogs
  resources :body_colors
  resources :text_colors
  resources :designs, except: [:show, :index]
  devise_for :cmsadmins     
  resources :homes
  get 'errors/not_found'
  match "/404", :to => "errors#not_found", :via => :all 
  match "/500", :to => "errors#internal_server_error", :via => :all      
    
  get "/pages" => "pages#index"    
  get '/:id' => 'pages#show', as: :page
  patch '/:id' => 'pages#update'    
  put '/:id' => 'pages#update'    
  delete '/:id' => 'pages#destroy'    
  resources :pages, except: [:show, :delete, :update]	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'homes#index', as: :root        
end
