Rails.application.routes.draw do
  resources :books
  get '/' => 'homes#top'
  get 'edit_book' => book_path(@book.id)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
