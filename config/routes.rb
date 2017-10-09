Rails.application.routes.draw do
  devise_for :users
	resources :pics do
		put "like", to: "pics#upvote", on: :member
	end
	root 'pics#index'
end
