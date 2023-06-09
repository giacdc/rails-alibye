class AlibyesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_alibye, only: %i[show edit update destroy]

  def index
    @alibyes = Alibye.all
    @alibyes = Alibye.search_by_title_and_description(params[:query]) if params[:query].present?
  end

  def show
    params[:page] = "show"
  end

  def new
    @alibye = Alibye.new
  end

  def create
    @alibye = Alibye.new(alibye_params)
    @alibye.user = current_user
    if @alibye.save
      redirect_to alibye_path(@alibye)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @alibye.update(alibye_params)
    if @alibye.save
      redirect_to alibye_path(@alibye)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @alibye.destroy
    redirect_to alibyes_path, status: :see_other
  end

  private

  def set_alibye
    @alibye = Alibye.find(params[:id])
  end

  def alibye_params
    params.require(:alibye).permit(:title, :category, :user_id, :photo, :price_per_hour, :description)
  end
end
