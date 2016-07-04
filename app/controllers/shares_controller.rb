class SharesController < ApplicationController
  before_action :authenticate_user! ,except: [:show, :index] 
  before_action :set_share, only: [:show, :edit, :update, :destroy]
  # before_action :authorize! ,[:show, :edit, :update, :destroy]
  # GET /shares
  # GET /shares.json

  def index
    @shares = Share.all
    @user= User.all
  
  end

  # GET /shares/1
  # GET /shares/1.json
  def show
    @user= User.all

  end

  # GET /shares/new
  def new
    authorize! :new , @share
    @share = Share.new
  end

  # GET /shares/1/edit
  def edit 
    authorize! :edit , @share
  end

  # POST /shares
  # POST /shares.json
  def create
    authorize! :create , @share
    @share = Share.new(share_params)
    @share.user = current_user
    @share.luggage = current_user.luggage
    @share.experience = current_user.experience
    @share.car_make = current_user.car_model
    respond_to do |format|
      if @share.save
        format.html { redirect_to @share, notice: 'Share was successfully created.' }
        format.json { render :show, status: :created, location: @share }
      else
        format.html { render :new }
        format.json { render json: @share.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shares/1
  # PATCH/PUT /shares/1.json
  def update
    authorize! :update , @share
    respond_to do |format|
      if @share.update(share_params)
        format.html { redirect_to @share, notice: 'Share was successfully updated.' }
        format.json { render :show, status: :ok, location: @share }
      else
        format.html { render :edit }
        format.json { render json: @share.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shares/1
  # DELETE /shares/1.json
  def destroy
    authorize! :destroy, @share
    @share.destroy
    respond_to do |format|
      format.html { redirect_to shares_url, notice: 'Share was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  # # # Search shares
  # def search
  #   @search = Share.search do
  #     fulltext params[:search][:q]
  #   end
  #   @share = @search.results
  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render json: @share }
  #   end
  #   render json: @search
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_share
      @share = Share.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def share_params
      params.require(:share).permit(:avatar,:user_id,:username,:email, :body, :created_at, :updated_at, :location, :car_make, :price, :route, :distance, :date, :luggage, :experience,:superuser_id)
    end
end
