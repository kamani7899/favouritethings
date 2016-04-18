class PlayerHistoriesController < ApplicationController


  # GET /player_histories
  # GET /player_histories.json
  def index
    @player_histories = PlayerHistory.all
  end

  # GET /player_histories/1
  # GET /player_histories/1.json
  def show
  end

  # GET /player_histories/new
  def new
    @player = Player.find(params[:player_id])
    @player_history = PlayerHistory.new
  end

  # GET /player_histories/1/edit
  def edit
  end

  # POST /player_histories
  # POST /player_histories.json
  def create
    @player = Player.find(params[:player_id])
    @player_history = PlayerHistory.new(player_history_params)
    @player_history .player = @player

    respond_to do |format|
      if @player_history.save
        format.html { redirect_to @player, notice: 'Player history was successfully created.' }
        format.json { render :show, status: :created, location: @player_ }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_histories/1
  # PATCH/PUT /player_histories/1.json
  def update
    respond_to do |format|
      if @player_history.update(player_history_params)
        format.html { redirect_to @player, notice: 'Player history was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_histories/1
  # DELETE /player_histories/1.json
  def destroy
    @player = Player.find(params[:player_id])
    @player_history = PlayerHistory.find(params[:id])
    title = @player.name
    if @player_history.destroy
      flash[:notice] = "#{title} was deleted succesfully"
      redirect_to @player
    else
      flash[:error] = "There was an error deleting this"
      render 'show'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_history
      @player_history = PlayerHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_history_params
      params.require(:player_history).permit(:club, :period, :performance, :player_id)
    end
end
