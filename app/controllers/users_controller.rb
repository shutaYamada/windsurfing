class UsersController < ApplicationController
    def index 
        @users = User.all
        
    end
    
    def show
        @user = User.find(params[:id])
        @departure = @user.departure
        
        #今月のレンジ
        this_month = Time.current.all_month
        # 今月の出艇
        @departure_month = @departure.where(date: this_month)
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update 
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path
    end
    
    def destroy 
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end
    
    private
    
    def user_params
        params.require(:user).permit(:name, :profile_image, :sail_no, :gerende)
    end
end
