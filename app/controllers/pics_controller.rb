class PicsController < ApplicationController

	before_action :find_pic, only: [:show, :edit, :update, :destroy]

	def index
		@pics = Pic.all
	end

	def new
		
	end

	def create
		@pic = Pic.new(pic_params)
		if @pic.save
			redirect_to @pic, notice: "Yess! It was posted! "
		else
			render 'new'
		end
	end

	def show
		@pic = Pic.find(params[:id])
	end

	private

	def pic_params
		params.require(:pic).permit(:title, :description)
	end

	def find_pic
		@pic = Pic.new
	end

end
