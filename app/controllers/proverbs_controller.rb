class ProverbsController < ApplicationController

  def index

     @proverb = Proverb.order("RANDOM()").first 

  end

end
