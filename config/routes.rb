Rails.application.routes.draw do
  	resources :workpermits do
  		get 'altedit', :on => :member
	end
  	resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
