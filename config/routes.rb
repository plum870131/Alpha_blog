Rails.application.routes.draw do
  root "pages#home"
  get "/about", to: "pages#about"

  # 利用resources 生成 CRUD actions 的 routes （table name plural）
  resources :articles , only: [:show, :index, :new, :create] # 如果只要其中幾個action使用only
  # get "/articles/new", to: "articles#new"
  # post "/articles", to: "articles#create"
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

end
