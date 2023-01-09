Rails.application.routes.draw do
  root "pages#home"
  get "/about", to: "pages#about"

  # 利用resources 生成 CRUD actions 的 routes （table name plural）
  resources :articles , only: [:show, :index] # 如果只要其中幾個action使用only
end
