class PartnersController < ApplicationController

  def show
    @partner = Partner.find(partners_params)
  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(partners_params)
    if @partner.save
      flash[:success] = "Поздравляем, успешно принято!"
      redirect_to request_path(@partner)
    else
      render 'new'
    end
  end

  private

  def partners_params
    params.require(:partner).permit(:inn, :name, :site, :phone,
                                    :yml_link, :city, :address,
                                    :emp_name, :emp_email, :emp_phone)
  end

end
