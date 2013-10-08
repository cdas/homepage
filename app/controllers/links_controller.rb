class LinksController < ApplicationController
  def add
  end

  def show
		@links = Link.all
  end
	
	def new
		@link = Link.new
	end
	
	def create
		@link = Link.new(link_params)
		
		if @link.save
			redirect_to action: 'new'
		else
			redirect_to action: 'new', status: :unprocessable_entity
		end
		
		private
			def link_params
				param.require(:link).permit(:url)
			end
	end
end
