class ShowsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_show

	def index
		@shows = Show.all
		if params[:search_term].present?
			@shows = Show.joins(:channel).where("shows.name LIKE ? OR channels.name LIKE ?", "%#{params[:search_term]}%", "%#{params[:search_term]}%") 
		end
	end

	def set_as_favourite
		favourite = @show.favourites.create(user_id: current_user.id)
		redirect_to shows_path
	end

	def remove_from_favourite
		favourite = @show.favourites.find_by(user_id: current_user.id)
		favourite.destroy
		redirect_to shows_path
	end

	private

	def set_show
		@show = Show.find_by(id: params[:show_id])		
	end
end
