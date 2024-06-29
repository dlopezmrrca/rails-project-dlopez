class HomeController < ApplicationController
  def index
    @characters = Character.paginate(page: params[:page], per_page: 10)
    @clans = Clan.all
  end

  def about
  end

  def characters
    @characters = Character.paginate(page: params[:page], per_page: 10)
  end

  def show
    @character = Character.find(params[:id])
    @jutsus = @character.jutsus.paginate(page: params[:page], per_page: 10)
    @clan_name = @character.clans.first.name if @character.clans.any?
  end

  def search_characters
    @characters = filtered_characters.paginate(page: params[:page], per_page: 10)

    render 'search'
  end

  def clans
    @clans = Clan.all
  end

  def clan_characters
    @clan = Clan.find(params[:id])
    @characters = @clan.characters.paginate(page: params[:page], per_page: 10)
  end

  private

  def filtered_characters
    characters = Character.joins(:character_clans).where.not(character_clans: { clan_id: nil })

    characters = characters.where('name LIKE ?', "%#{params[:query]}%") if params[:query].present?
    characters = characters.where(character_clans: { clan_id: params[:clan_id] }) if params[:clan_id].present? && params[:clan_id].to_i > 0

    characters.distinct
  end


end
