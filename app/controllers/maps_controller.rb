class MapsController < ApplicationController
  def index
    @shops = Shop.all
    gon.shops = @shops
  end
end
