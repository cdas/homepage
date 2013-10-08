class HomeController < ApplicationController
  def index
		@contents = Content.all
		# @links = Link.all
		@links = {
			:twitter => "http://twitter.com/cdas31",
			:mail => "cdas@habmalnefrage.de"
		}
  end
end