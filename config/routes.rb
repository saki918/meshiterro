Rails.application.routes.draw do
  # get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'post_images#index'
	resources :post_images, only: [:new, :create, :index, :show,:destroy] do
		# いいね機能のルーティングを設定
		resource :favorites, only: [:create, :destroy]
		resource :post_comments, only: [:create, :destroy]
# post_commentsのshowページが不要で、idの受け渡しも必要ないので、resourceとなる
end
	resources :users, only: [:show,:edit,:update]
end

