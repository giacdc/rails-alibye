class AlibyesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @alibyes = Alibye.all
  end

  def show
    @alibye = Alibye.find(params[:id])
  end

  def new
    @alibye = Alibye.new
  end

  def create
    @alibye = Alibye.new(alibye_params)
    # raise
    @alibye.user = current_user
    if @alibye.save
      redirect_to alibye_path(@alibye)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @alibye.destroy
    redirect_to alibyes_path
  end

  private

  def set_alibye
    @alibye = Alibye.find(params[:id])
  end

  def alibye_params
    params.require(:alibye).permit(:title, :category, :user_id, :price_per_hour, :description)
  end
end
