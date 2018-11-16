class PagesController < ApplicationController
  def home
  	@posts = Blog.all #Instancia todos os posts Blog na variavel posts
  end

  def about
  end

  def contact
  end
end
