class AlibyesController < ApplicationController
  def index
    @alibyes = Alibye.all
  end

  def show
    @alibyes = Alibye.find(params[:id])
  end

  def new
    @alibyes = Alibye.new
  end

  def create
    @alibye = Alibye.new(alibye_params)
    if @alibye.save
      redirect_to alibyes_path(@alibye)
    else
      render :new
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
