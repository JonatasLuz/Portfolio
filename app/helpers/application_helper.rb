module ApplicationHelper
	def login_helper style
	 	if current_user.last_name!="Convidado"
     	link_to "Logout", destroy_user_session_path, method: :delete, class: style
     	else  
     	(link_to "Registre-se", new_user_registration_path, class: style) +
     	" ".html_safe +
     	(link_to "Login", new_user_session_path , class: style)
     	end  
	end
	def source_helper(layout_name)
		if session[:source]
    	greeting = "Obrigado por visitar meu Portfolio através do #{session[:source]} "
    	content_tag(:p,greeting, class: "source-greeting")
    	end
	end
end
