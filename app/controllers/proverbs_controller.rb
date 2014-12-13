class ProverbsController < ApplicationController

  def index
     @proverb = Proverb.order("RANDOM()").first 
  end

  def create
    @proverb = Proverb.create(proverb_params)
    if @proverb.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end


  private

  def proverb_params
    params.require(:proverb).permit(:proverb, :yiddish, :transliteration, :source)
  end

end
