Mixx96Deals::Application.routes.draw do
  
  resources :deals do
		resources :orders
	end

	resources :orders do
    get 'failure', :on => :member
    get 'success', :on => :member
  end

  devise_for :users

  get 'deal/:id', :to => 'deals#show', as: 'deal'
  get 'coupon/:id', :to => 'coupon#show', as: 'coupon'


  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'site#index'
end
