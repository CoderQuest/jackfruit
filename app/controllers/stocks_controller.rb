class StocksController < ApplicationController
	def index
		@stock = Stock.new
	  @stocks = Stock.all.order('created_at DESC')
	end

  def create
  	@stock = Stock.create(stock_params)
  	if @stock.save
			redirect_to root_path
		else
			render 'new'
		end
  end

  private

  def stock_params
		params.require(:stock).permit(:stock_name, :val_1, :val_2, :val_3)
	end
end
