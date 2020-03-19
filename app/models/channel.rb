class Channel < ApplicationRecord
	has_many :shows

	def shows_count
		shows.count
	end
end
