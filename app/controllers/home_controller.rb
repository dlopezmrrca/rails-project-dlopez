class HomeController < ApplicationController
  def index
  end

  def about

  end

  def characters
    @characters = Character.all
    @characters = Character.paginate(page: params[:page], per_page: 10)
  end
end
