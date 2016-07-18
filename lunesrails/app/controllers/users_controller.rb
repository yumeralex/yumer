class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new 
		@user = User.new 
	end 

	def edit 
		@user = User.find(params[:id])
	end 
	def show 
		@user = User.find(params[:id])
	end 

	def destroy 
		@user = User.find(params[:id])
		@user.destroy
		redirect_to
	end 

	def create 
		 @user = User.new(user_params)

		 respond_to do |format|
		 	if @user.save
		 		format.html {redirect_to user_url, notice: 'Se guardo el usuario'}
		 		format.json {render json: user_url, status: :create, location: user_url}
		 	else 
		 		format.html { render action: "new"}
		 	end
		 end
		end 
		
	def update 
		@user = User.find(params[:id])
		@user.update(user_params)
	end
	def user_params 
		params.require(:user).permit(:name, :email,:id)
	end
end
