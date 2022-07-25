class OrderController < ActionController::Base
    skip_before_action :verify_authenticity_token

    # add a order
    def addOrder
        user_name = params[:user_name]
        user_ph = params[:user_ph]
        items = params[:items]


        render :json => [user_name, user_ph, items]
    end
end
