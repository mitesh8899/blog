class RelativesController < ApplicationController
  http_basic_authenticate_with name: "mitesh", password: "88999976", except: [:index, :show]

  def index
    @relatives =Relative.all  
  end

  def new
    @relative = Relative.new  
  end

  def create
    @relative = Relative.new(relative_params)
    if @relative.save
      redirect_to relatives_path
    else
      render :new
    end
  end

  def edit
    @relative = Relative.find(params[:id])
  end

  def update
    @relative = Relative.find(params[:id])
    @relative.update(relative_params)
    redirect_to relatives_path
  end

  def destroy
    @relative = Relative.find(params[:id])
    @relative.destroy
    redirect_to relatives_path
  end

  def show
    @relative = Relative.find(params[:id])
  end

  private
  def relative_params
    params.require(:relative).permit(:name,:age)
  end
end
