Rails.application.routes.draw do
  

  get '/electronics',   to: 'static_pages#electronics'

  get '/furniture',     to: 'static_pages#furniture'

  get '/garage_sales',   to: 'static_pages#garage_sales'
  
  root 'static_pages#home'
  
end
