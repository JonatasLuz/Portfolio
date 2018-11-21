module ApplicationHelper
	def login_helper
	 	if current_user.first_name!="Convidado"
     	link_to "Logout", destroy_user_session_path, method: :delete 
     	else  
     	(link_to "Registre-se", new_user_registration_path) +
     	"<br>".html_safe +
     	(link_to "Login", new_user_session_path)
     	end  
	end
	def source_helper(layout_name)
		if session[:source]
    	greeting = "Obrigado por visitar meu Portfolio através do #{session[:source]} "
    	content_tag(:p,greeting, class: "source-greeting")
    	end
	end
end
