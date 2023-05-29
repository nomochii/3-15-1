Rails.application.routes.draw do
  resources :books
  get '/' => 'homes#top'
  get 'books/new'
  post 'books' => 'books#create'  
  get 'books/:id' => 'books#show', as: 'book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
