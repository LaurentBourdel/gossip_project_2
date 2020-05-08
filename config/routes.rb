Rails.application.routes.draw do

  root 'home#gossip'
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  get 'welcome/:first_name', to: 'welcome#first_name'
  get 'home/show_gossip', to: 'home#show_gossip'
  
end
