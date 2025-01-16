Rails.application.routes.draw do
  # indexアクションをrootに設定
  root to: 'rails_kakeibos#index'

  # resourcesで他のRESTfulルートを定義
  resources :rails_kakeibos, except: :index
end
