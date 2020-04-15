class FavoritesController < ApplicationController
   before_action :require_user_logged_in
    
   def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = "favorite"
    redirect_to root_path
   end
   
   def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = "unfavorite"
    redirect_to root_path
   end
end
