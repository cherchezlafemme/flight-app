Rails.application.routes.draw do
  get '/' => 'pages#index'

  resources :flights, only: [:index, :show] do
    get 'search', on: :collection
    post 'search_results', on: :collection
  end

  get '/test' => "pages#test"

end
