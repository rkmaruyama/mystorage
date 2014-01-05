class PicsController < ApplicationController
	def index
		@pics = Pic.all
		
	end

	def new
		@pic = Pic.new 
	end

	def create
		Pic.create(pic_params)
		redirect_to pics_path
		#Pic.create("lesson=> 1, ...")
	end

	private

	def pic_params
		params.require(:pic).permit(:lesson, :emotion, :learned)
	end


end