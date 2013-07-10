class MoviesPlayersController < ApplicationController
  # GET /movies_players
  # GET /movies_players.json
  def index
    @movies_players = MoviesPlayer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movies_players }
    end
  end

  # GET /movies_players/1
  # GET /movies_players/1.json
  def show
    @movies_player = MoviesPlayer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movies_player }
    end
  end

  # GET /movies_players/new
  # GET /movies_players/new.json
  def new
    @movies_player = MoviesPlayer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movies_player }
    end
  end

  # GET /movies_players/1/edit
  def edit
    @movies_player = MoviesPlayer.find(params[:id])
  end

  # POST /movies_players
  # POST /movies_players.json
  def create
    @movies_player = MoviesPlayer.new(params[:movies_player])

    respond_to do |format|
      if @movies_player.save
        format.html { redirect_to @movies_player, notice: 'Movies player was successfully created.' }
        format.json { render json: @movies_player, status: :created, location: @movies_player }
      else
        format.html { render action: "new" }
        format.json { render json: @movies_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movies_players/1
  # PUT /movies_players/1.json
  def update
    @movies_player = MoviesPlayer.find(params[:id])

    respond_to do |format|
      if @movies_player.update_attributes(params[:movies_player])
        format.html { redirect_to @movies_player, notice: 'Movies player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movies_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies_players/1
  # DELETE /movies_players/1.json
  def destroy
    @movies_player = MoviesPlayer.find(params[:id])
    @movies_player.destroy

    respond_to do |format|
      format.html { redirect_to movies_players_url }
      format.json { head :no_content }
    end
  end
end
