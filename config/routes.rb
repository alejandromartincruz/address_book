Rails.application.routes.draw do
  get "/contacts" => "contacts#index"
  get "/contacts/new" => "contacts#new"
  post "/contacts" => "contacts#create"
  get "/contacts/:contact_id" => "contacts#show", as: :contact_show
end
