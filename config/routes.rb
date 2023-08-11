Rails.application.routes.draw do
  get 'books' => "lists#index"
  post "books" => "lists#create",as: "book_create"
  get "books/:id" => 'lists#show',as: "book_show"
  get "books/edit/:id" => 'lists#edit',as: "book_edit"
  delete "books/:id" => "lists#destroy",as: "book_destroy"
  patch "books/:id" => "lists#update",as: "book_update"
  get "top" => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
