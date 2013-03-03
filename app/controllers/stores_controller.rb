class StoresController < ApplicationController
	#before_filter :admin_user,			only: :destroy
  before_filter :signed_in_user, 	only: [:create, :destroy]
  before_filter :correct_user,		only: :destroy
  
	def new
		 @store = current_user.stores.build if signed_in?
	end
  def create
  	@store = current_user.stores.build(params[:store])
  	if @store.save
  		
  		flash.now[:success] = "Store Created"
  		redirect_to current_user
  	else
  	  flash.now[:error] = 'Error in creating store'
  		render 'static_pages/home'
  	end
  end

  def destroy
  	Store.find(params[:id]).destroy
  	flash.now[:success] = "Store Deleted"
  	if current_user.admin?
  		redirect_to users_url
  	else
  		redirect_to current_user
  	end
  end
end
private
def correct_user
	if !current_user.admin?
		@store= current_user.stores.find_by_id(params[:id])
		redirect_to root_url if @store.nil?
	end
end

def admin_user
	redirect_to(root_path) unless current_user.admin?
end
