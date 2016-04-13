class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/load_index.json
  def load_index
    # Make json that includes rows and columndefs and pass in one shot...
    hs = { columnDefs: [
    {headerName: "id", field: "id"},
    {headerName: "Name", field: "user_name"},
    {headerName: "Department", field: "department_name"},
    {headerName: "Branch", field: "branch_name"},
    {headerName: "First Name", field: "first_name"},
    {headerName: "Last Name", field: "last_name"},
    {headerName: "Active", field: "active"},
    {headerName: "Email address", field: "email_address"},
    {headerName: "Created", field: "created_at"},
    {headerName: "Updated", field: "updated_at"},
    ], rowDefs: User.association_join(:department).association_join(:branch).all}
    render json: hs, status: :ok
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      # @user = User.find!(params[:id])
      @user = User.find(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_name, :password, :password_confirmation, :department_id, :branch_id, :created_by, :updated_by, :first_name, :last_name, :active, :email_address)
    end
end
