Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   # get all food items
   get "food", to: "food#getAllFood"
   #get food based on food type
   get "foods/:food_type", to: "food#getSpecificFoods"
   # create a new todo
   post "food", to: "food#createFood"
   # delete a todo
   delete "food/:id", to: "food#deleteFood"
   # update a todo
   put "food", to: "food#updateFood"

   # add a order
   post "order", to: "order#addOrder"
  # root "articles#index"
end
