class MainsController < ApplicationController
	def index
		@users=Main.all
	end
	def new
		@user = Main.new
	end
	def create
		@user = Main.new(:firstname => params[:main][:firstname], :lastname => params[:main][:lastname], :designation => params[:main][:designation], :origin => params[:main][:origin])
		if @user.valid? && @user.errors.blank?
		@user.save

		redirect_to main_path(@user.id)
	else
		render 'new'
		end
	end
	def show 
		@user=Main.find(params[:id])
	end
end
