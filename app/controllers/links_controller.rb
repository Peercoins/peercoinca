class LinksController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @link = Link.find_by(id: params[:id])
    if (@link)
      redirect_to @link.url
    else
      redirect_to root_path
    end
  end
end
