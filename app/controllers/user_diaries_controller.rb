class UserDiariesController < ApplicationController
  before_action :set_user_diary, only: [:show, :edit, :update, :destroy]

  # GET /user_diaries
  # GET /user_diaries.json
  def index
    @user_diaries = UserDiary.all
  end

  # GET /user_diaries/1
  # GET /user_diaries/1.json
  def show
  end

  # GET /user_diaries/new
  def new
    @user_diary = UserDiary.new
  end

  # GET /user_diaries/1/edit
  def edit
  end

  # POST /user_diaries
  # POST /user_diaries.json
  def create
    @user_diary = UserDiary.new(user_diary_params)

    respond_to do |format|
      if @user_diary.save
        format.html { redirect_to @user_diary, notice: 'User diary was successfully created.' }
        format.json { render :show, status: :created, location: @user_diary }
      else
        format.html { render :new }
        format.json { render json: @user_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_diaries/1
  # PATCH/PUT /user_diaries/1.json
  def update
    respond_to do |format|
      if @user_diary.update(user_diary_params)
        format.html { redirect_to @user_diary, notice: 'User diary was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_diary }
      else
        format.html { render :edit }
        format.json { render json: @user_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_diaries/1
  # DELETE /user_diaries/1.json
  def destroy
    @user_diary.destroy
    respond_to do |format|
      format.html { redirect_to user_diaries_url, notice: 'User diary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_diary
      @user_diary = UserDiary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_diary_params
      params.require(:user_diary).permit(:diary_title, :diary_content)
    end
end
