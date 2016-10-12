PeicttTodo::Application.routes.draw do
  root "landing#index"
  get "/todos/new", to: "todo#new"
  get "/todos/edit/:id", to: "todo#edit"
  post "/todos/create", to: "todo#create"
  get "/todos/:id", to: "todo#show"
  put "/todos/update/:id", to: "todo#update"
  delete "/todos/destroy/:id", to: "todo#destroy"
  get "/todos", to: "todo#index"
end
