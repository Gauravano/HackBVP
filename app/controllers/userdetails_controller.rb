class UserdetailsController < ApplicationController
  before_action :set_userdetail, only: [:show, :edit, :update, :destroy]

  # GET /userdetails
  # GET /userdetails.json
  def index
    @userdetails = Userdetail.all
  end

  # GET /userdetails/1
  # GET /userdetails/1.json
  def show
  end

  # GET /userdetails/new
  def new
    @userdetail = Userdetail.new
  end

  # GET /userdetails/1/edit
  def edit
  end

  # POST /userdetails
  # POST /userdetails.json
  def create
    @userdetail = Userdetail.new(userdetail_params)

    respond_to do |format|
      if @userdetail.save
        format.html { redirect_to @userdetail, notice: 'Userdetail was successfully created.' }
        format.json { render :show, status: :created, location: @userdetail }
      else
        format.html { render :new }
        format.json { render json: @userdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userdetails/1
  # PATCH/PUT /userdetails/1.json
  def update
    respond_to do |format|
      if @userdetail.update(userdetail_params)
        format.html { redirect_to @userdetail, notice: 'Userdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @userdetail }
      else
        format.html { render :edit }
        format.json { render json: @userdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userdetails/1
  # DELETE /userdetails/1.json
  def destroy
    @userdetail.destroy
    respond_to do |format|
      format.html { redirect_to userdetails_url, notice: 'Userdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userdetail
      @userdetail = Userdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userdetail_params
      params.require(:userdetail).permit(:name, :address, :user_id)
    end
end
