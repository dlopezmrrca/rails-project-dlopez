class HomeController < ApplicationController
  def index
    @characters = Character.paginate(page: params[:page], per_page: 10)
  end

  def about

  end

  def characters
    @characters = Character.all
    @characters = Character.paginate(page: params[:page], per_page: 10)
  end

  def show
    @character = Character.find(params[:id])
    @jutsus = @character.jutsus
    @clan_name = @character.clans.first.name if @character.clans.any?
    @jutsus = @character.jutsus.paginate(page: params[:page], per_page: 10)

  end

  def search
    if params[:query].present?
      @characters = Character.where('name LIKE ?', "%#{params[:query]}%").paginate(page: params[:page], per_page: 10)
    else
      @characters = Character.paginate(page: params[:page], per_page: 10)
    end
  end

end
