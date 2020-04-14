class SearchController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def search
    if params[:search].blank?
      redirect_to(home_index_path, notice: 'Empty field!')
    else
      @parameter = params[:search].downcase
      @products = Product.all.where('lower(title) LIKE :search', search: @parameter)
    end
  end
end
