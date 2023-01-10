Rails.application.routes.draw do
  root "pages#home"
  get "/about", to: "pages#about"

  # 利用resources 生成 CRUD actions 的 routes （table name plural）
  # routes順序重要
  # resources :articles #, only: [:show, :index, :new, :create, :edit, :update] # 如果只要其中幾個action使用only
  get "/articles/new", to: "articles#new", as: "new_article"
  post "/articles", to: "articles#create"
  get "/articles/:id/edit", to: "articles#edit", as: "edit_article"
  get "/articles/:id", to: "articles#show", as: "article"
  patch "/articles/:id", to: "articles#update"
  get "/articles", to: "articles#index"
  delete "/articles/:id", to: "articles#destroy"

end
