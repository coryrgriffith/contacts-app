Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    #index
    get '/contacts' => 'contacts#index'
        #create
    post '/contacts' => 'contacts#create'

    #show
    get '/contacts/:id' => 'contacts#show'
    #update
    patch '/contacts/:id' => 'contacts#update'
    #destroy
    delete '/contacts/:id' => 'contacts#destroy'
  end 
end
