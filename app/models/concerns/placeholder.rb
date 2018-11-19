module Placeholder
	extend ActiveSupport::Concern

	def self.image_generator(height:, width:,text:)
		"https://via.placeholder.com/#{height}x#{width}/000000/FFFF00?text=#{text}"
	end

end