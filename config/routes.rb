Mixx96Deals::Application.routes.draw do
  resources :deals do
		resources :orders do
      get 'failure', :on => :member
      get 'success', :on => :member
    end
	end


  resources :orders
  resources :merchants

  devise_for :users

  get 'deal/:id', :to => 'deals#show', as: 'deal'
  get 'coupon/:id', :to => 'coupons#show', as: 'coupon'
  get 'ad/:id', :to => 'ads#show', as: 'ad'
  get 'event/:id', :to => 'events#show', as: 'event'


  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'site#index'
end
