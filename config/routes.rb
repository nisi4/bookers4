Rails.application.routes.draw do
  get 'books' => "lists#index"
  post "books" => "lists#create",as: "book_create"
  get "books/:id" => 'lists#show',as: "book_show"
  get "books/:id" => 'lists#edit',as: "book_edit"
  delete "books/:id" => "lists#destroy",as: "book_destroy"
  get "top" => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
