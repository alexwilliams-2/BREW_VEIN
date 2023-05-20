class PagesController < ApplicationController
  def home
      @beers = Beer.all
  end
end
