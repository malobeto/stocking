class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: "pk_42833966e96f49a9bb23e12ed149e6aa")
  end

  def about
  end
end
