Present::Application.routes.draw do
  resources :avatars

  get 'browser' => 'browser#index'
  root to: "avatars#index" #presentations#index"
end
