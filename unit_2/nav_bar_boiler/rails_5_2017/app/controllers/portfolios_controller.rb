class PortfoliosController < ApplicationController

	def index
		@portfolio_items = Portfolio.all
    
    #where(subtitle: 'Angular') == Portfolio.angular
    #define method in port.rb
    #Cleaner syntax and resuable
	end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

	def new
		@portfolio_item = Portfolio.new
	end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
 
  end

  def edit
  	@portfolio_item = Portfolio.find(params[:id])
  end

  def update
    respond_to do |format|
   	@portfolio_item = Portfolio.find(params[:id])

      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    #look up by params id structure
  	@portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
  	#perform lookup
  	@portfolio_item = Portfolio.find(params[:id])
  	#destroys record
  	@portfolio_item.destroy
  	#redirect
    respond_to do |format|
      	format.html { redirect_to portfolios_url, notice: 'Blog was successfully destroyed.' }
  		end
	end

end








