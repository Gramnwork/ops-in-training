class UserProfsController < ApplicationController
  before_action :set_user_prof, only: [:show, :edit, :update, :destroy]

  # GET /user_profs
  # GET /user_profs.json
  def index
    @user_profs = UserProf.all
    @user_title = 'ユーザー一覧'
  end

  # GET /user_profs/1
  # GET /user_profs/1.json
  def show
    @user_title = '情報表示'
    render action: 'user_detail', layout: 'user_detail'
  end

  # GET /user_profs/new
  def new
    @user_prof = UserProf.new
    @user_title = '新規登録'
    @user_prof.diaries.build #3-4. ユーザーを作ったら日記も作成
  end

  # GET /user_profs/1/edit
  def edit
    @user_title = '情報編集'
  end

  # POST /user_profs
  # POST /user_profs.json
  def create
    @user_prof = UserProf.new(user_prof_params)

    respond_to do |format|
      if @user_prof.save
        format.html { redirect_to @user_prof, notice: 'User prof was successfully created.' }
        format.json { render :show, status: :created, location: @user_prof }
      else
        format.html { render :new }
        format.json { render json: @user_prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_profs/1
  # PATCH/PUT /user_profs/1.json
  def update
    respond_to do |format|
      if @user_prof.update(user_prof_params)
        format.html { redirect_to @user_prof, notice: 'User prof was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_prof }
      else
        format.html { render :edit }
        format.json { render json: @user_prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_profs/1
  # DELETE /user_profs/1.json
  def destroy
    @user_prof.destroy
    respond_to do |format|
      format.html { redirect_to user_profs_url, notice: 'User prof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_prof
      @user_prof = UserProf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_prof_params
      params.require(:user_prof).permit(:name, :age, :male, :blood_type)
    end
end
