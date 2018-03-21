class TheatresController < ApplicationController
  before_action :set_theatre, only: [:show, :edit, :update, :destroy]

  # GET /theatres
  # GET /theatres.json
  def index
    @theatres = Theatre.where(user_id: current_user.id)
  end

  # GET /theatres/1
  # GET /theatres/1.json
  def show
    @lieu = Lieu.where(id: @theatre.lieu_id)
  end

  # GET /theatres/new
  def new
    @theatre = Theatre.new
  end

  # GET /theatres/1/edit
  def edit
  end

  # POST /theatres
  # POST /theatres.json
  def create
    @theatre = Theatre.new(theatre_params)
    @theatre.user_id = current_user.id
    @theatre.lieu_id = params[:theatre][:lieu_id].to_i
    @production = Production.where(id: params[:theatre][:production_id].to_i)
    @theatre.production_id = @production[0].id
    @company = Company.where(user_id: current_user.id)
    @theatre.company_id = @company[0].id

    respond_to do |format|
      p @theatre
      if @theatre.save
        format.html { redirect_to @theatre, notice: 'Theatre was successfully created.' }
        format.json { render :show, status: :created, location: @theatre }
      else
        format.html { render :new }
        format.json { render json: @theatre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theatres/1
  # PATCH/PUT /theatres/1.json
  def update
    respond_to do |format|
      if @theatre.update(theatre_params)
        format.html { redirect_to @theatre, notice: 'Theatre was successfully updated.' }
        format.json { render :show, status: :ok, location: @theatre }
      else
        format.html { render :edit }
        format.json { render json: @theatre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theatres/1
  # DELETE /theatres/1.json
  def destroy
    @theatre.destroy
    respond_to do |format|
      format.html { redirect_to theatres_url, notice: 'Theatre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theatre
      @theatre = Theatre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theatre_params
      params.require(:theatre).permit(:titre, :theatre_type, :longueur, :largeur, :surface,:production_id ,:user_id, :lieu_id , :company_id)
    end
end
