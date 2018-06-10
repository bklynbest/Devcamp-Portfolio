class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :destroy, :show]
  layout "portfolio"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all


  def index
    @portfolio_items = Portfolio.by_position
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render body: nil
  end

  def new
    @portfolio_item = Portfolio.new
    technology_params
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    respond_to do |format|
    if @portfolio_item.save
      format.html {redirect_to portfolios_path, notice: 'Your new post is live'}
    else
      format.html {render :new }
    end
  end
end

  def edit
    technology_params
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html {redirect_to portfolios_path, notice: 'Portfolio has been updated successfully.'}
      else
        format.html {render :edit}
      end
    end
  end

  def show
  end

  def destroy
    #Perform the lookup
    #destroy/delete the record
    @portfolio_item.destroy
    # Redirect
    respond_to do |format|
      format.html {redirect_to portfolios_url, notice: 'Record was removed.' }
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name]
                                    )
  end

  def technology_params
    @tech_params = 3.times { @portfolio_item.technologies.build }
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])

end

end
