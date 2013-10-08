class ContentsController < ApplicationController
  def new
		@content = Content.new
  end
	
	def create
		@content = Content.new(content_params)
		
		if @content.save
			redirect_to action: 'new'
		else
			redirect_to action: 'new', status: :unprocessable_entity
		end
	end
	
	private
	
		def content_params
			params.require(:content).permit(:title, :data)
		end
end
