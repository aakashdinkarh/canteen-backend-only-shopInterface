class FoodController < ActionController::Base
    skip_before_action :verify_authenticity_token

# get all Food
def getAllFood
    allFood = Food.all
    render :json => allFood
end

# get specific food based on food types
def getSpecificFoods
    allFood = Food.all
    receive_type = params[:food_type]
    typeFoods = Food.where(food_type: receive_type)
    render :json => typeFoods
end

# create a new food
def createFood
    newFood = {
        "name" => params[:name],
        "cost" => params[:cost],
        "food_type" => params[:food_type],
        "available" => params[:available],
        "food_img" => params[:food_img]
    }
    food = Food.new(newFood)
    food.save
    render :json => food.id
end

# update a food
# def updateFood
#     id = params[:id]
#     newText = params[:newText]
#     begin
#         food = Food.find(id)
#         food.update!(text: newText)
#     rescue Exception
#         render :json => Exception
#     end
# end

# check a food
def updateFood
    id = params[:id]
    newAvailable = params[:newAvailable]
    begin
        food = Food.find(id)
        food.update!(available: newAvailable)
    rescue Exception
        render :json => Exception
    end
    render :json => [id, newAvailable]
end

# delete a food
def deleteFood
    id = params[:id]
    food = Food.delete(id)
    render :json => id
end

end
