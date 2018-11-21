class ApplicationController < ActionController::Base
	include DeviseWhitelist
	include SetSource
	include CurrentUserConcern
	include DefaultPageContent

	before_action :set_copyright

	def set_copyright
		@copyright = JonatasViewTool::Renderer.copyright 'Jonatas da Luz','Seja bem vindo/a'
	end
end


module JonatasViewTool
	class Renderer
		def self.copyright name,msg
			"#{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
		end
	end
end