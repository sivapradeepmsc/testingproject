class PhonesController < ApplicationController
	class ArticlesController < ApplicationController

  def index
    @phones = Phone.all
  end
 
  def show
    @phone = Phone.find(params[:id])
  end
 
  def new
    @phone = Phone.new
      @phone.battarys.build
  end
 
  def edit
    @phone = Phone.find(params[:id])
    @phone.battarys.build
  end
 
  def create
    @phone = Phone.new(phone_params)
 
    if @phone.save
      redirect_to @phone
    else
      render 'new'
    end
  end
 
  def update
    @phone = Phone.find(params[:id])
 
    if @phone.update(phone_params)
      redirect_to @phone
    else
      render 'edit'
    end
  end
 
  def destroy
    @phone = Phone.find(params[:id])

    
   @phone.battarys.destroy
  
 
    redirect_to phones_path
  end
 
  private
    def phone_params
      params.require(:phone).permit(:name, battarys_attributes: [:name,:_destroy])
    end
end
end
