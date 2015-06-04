Rails.application.routes.draw do

get '/todos/', to: 'todos#index'

get '/todos/new', to: 'todos#new'

post '/todos/', to: 'todos#create'

get '/todos/:id', to: 'todos#show'

# get '/todos/:completed', to: 'todos#error'



 # Sending a POST request to http://localhost:3000/todos with the params of { "entry": "Finish Homework" }
 # should see my todo returned to me as json (Using Postman)

end
