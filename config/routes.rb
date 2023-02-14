Rails.application.routes.draw do
  #item will need to be create,  edit, add, show, should put discontinued instead??
  resources :items, except: [:index, :destroy]
  #manufacturers will need to be create, edit, add, show, should put discontinued instead??
  resources :manufacturers, except: [:index, :destroy]
  #invoice_in will need to be create, destroy, edit, add, show, index
  resources :invoice_ins
  #invoice_out will need to be create, destroy, edit, add, show, index
  resources :invoice_outs
  #stores will need to be create, destroy, edit, add, show should put discontinued instead??
  resources :stores, except: [:index, :destroy]
  #users will need to be create, destroy, edit, add, index, should put discontinued instead??
  resources :users, except: [:show, :destroy] 
  #nested routes invoice_ins and outs
  resources :invoice_in_items, only: [:create]
  resources :invoice_out_items, only: [:create]
  get 'exit', to: 'UserSessions#destroy', as: :logout
  get 'enter',  to: 'UserSessions#create', as: :login
end
