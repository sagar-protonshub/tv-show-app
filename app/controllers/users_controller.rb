class UsersController < ApplicationController
	def my_favourite_shows
		@shows = current_user.shows
	end
end
