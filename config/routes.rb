Notebook::Application.routes.draw do
  resources :ahas

  root to: 'Ahas#index'
end
