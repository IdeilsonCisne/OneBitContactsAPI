Rails.application.routes.draw do
  devise_for :users

  # /api/v1/contact
  namespace :api do
    namespace :v1 do
      resources :contacts
    end
  end

  # Este seria para usar como subdomínio, exemplo: api.exemplo.com/v1/contacts 
  # constraints subdomain: 'api' do
  #   scope module: 'api' do
  #     namespace :v1 do
  #       resources :contacts
  #     end
  #   end
  # end
end
