Rails.application.routes.draw do
  get 'static_page/about'

  get 'static_page/contact'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_page/index'

  root 'static_page#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
