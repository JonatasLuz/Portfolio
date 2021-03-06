class Portfolio < ApplicationRecord
	has_many :technologies
	accepts_nested_attributes_for :technologies, reject_if: lambda {|attrs| attrs['name'].blank?}
	include Placeholder
	validates_presence_of :title,:body

	def self.angular
		where(subtitle: 'Angular')
	end

	after_initialize :set_defaults


	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600',width: '250',text:"#{title}")
		self.thumb_image ||= Placeholder.image_generator(height: '350',width: '200',text:"#{title}")
	end
end
