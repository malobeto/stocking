class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: "pk_42833966e96f49a9bb23e12ed149e6aa")
    if params[:ticker] == ""
      @nothing = "Hey you forgot to enter a symbol."
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue RuntimeError => @errorMsg
        @error = "That company symbol does not exist."
      end
    end
  end

  def about
  end
end
