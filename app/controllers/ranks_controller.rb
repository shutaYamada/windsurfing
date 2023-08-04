
class RanksController < ApplicationController
    def rank
        @this_month = Time.current.all_month
        @user_rank = User.where(id: Departure.where(date: @this_month).group(:user_id).order('count(user_id) desc').pluck(:user_id))
        
        
    end
end
