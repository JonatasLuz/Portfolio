class PagesController < ApplicationController
  def home
  	@posts = Blog.all #Instancia todos os posts Blog na variavel posts
  	@skills = Skill.all #Instancia todas as skills Skill na variavel skills
  end

  def about
  end

  def contact
  end
end
