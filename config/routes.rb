Rails.application.routes.draw do

  devise_for :logins
  devise_scope :login do
    authenticated do
      root to: 'user#index', as: :authenticated_root
    end

    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get 'searchadmins/add' => 'searchadmins#add'
  get 'searchadmins/index'

  resources :searchadmins do
    collection { post :search, to: 'searchadmins#index'}
  end

  get 'searchusers/index' => 'searchusers#index'

  resources :searchusers do
    collection do
      match 'search' => 'searchusers#search', :via => [:get, :post], :as => :search
    end
  end

  get 'privacy' => 'privacy#index'
  get 'contact' => 'contact#index'
  get 'survey/index' => 'survey#index'
  get 'report/index' => 'report#index'

  get 'survey_admin/edit' => 'survey_admin#edit'
  post 'survey_admin/edit' => 'survey_admin#edit'
  get 'survey_admin/choices' => 'survey_admin#choices'
  post 'survey_admin/choices' => 'survey_admin#choices'
  get 'survey_admin/sub_questions' => 'survey_admin/sub_questions'
  post 'survey_admin/sub_questions' => 'survey_admin/sub_questions'
  post 'survey/create' => 'survey#create'

  get 'saved_lists/index' => 'saved_lists#index'
  post 'saved_lists/create' => 'saved_lists#create'


  get 'survey_admin/new_q' => 'survey_admin#new_q'
  get 'survey_admin/publish' => 'survey_admin#publish'
  post 'report/show' => 'report#show'

  post 'report/create' => 'report#create'

  post 'survey_admin/edit' =>'survey_admin#edit'
  post 'survey/index' => 'survey#index'
#  post 'survey_admin/new_q' => 'survey_admin#new_q'


  get '/saved_lists/:id', to: 'saved_lists#show', as: 'saved_list'
  post '/saved_lists/:id', to: 'saved_lists#show'



  delete '/saved_lists/:id', to: 'saved_lists#destroy'

  delete '/survey_admin/:id', to:'survey_admin#destroy'

  resources :user do
    get :autocomplete_company_name, on: :collection
    delete :avatar, on: :member
  end
  resources :survey_question, :controller => "survey_admin"
  resources :survey_admin, only: [:new,:new_q, :add, :create, :edit, :index, :choices, :sub_questions,  :survey_question_option]
  resources :surveys, only: [:index, :show, :create]
  resources :internships, only: [:index]
  resources :giving_backs, only: [:create] do
    get :autocomplete_company_name, :on => :collection
    new do
      get ':type', to: 'giving_backs#new', as: ''
    end
  end

  namespace :admin do
    resources :giving_backs, only: [:index, :update, :destroy] do
      get 'completed', on: :collection
      get 'archived', on: :collection
    end
    resources :accounts
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
