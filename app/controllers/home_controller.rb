class HomeController < ApplicationController
  def index
    @stories = Story.paginate(page: params[:page])
    @users = User.all
  end
  
  def about
  end
  
  def help
  end
  
  def contacts
  end
end
