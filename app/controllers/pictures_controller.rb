class PicturesController < ApplicationController
  def show
    @picture_id = params[:id]
    @picture_source = Picture.find_by({:id => params[:id]}).source  #or can use @picture = Picture.find(params[:id]).source
    @caption = Picture.find_by({:id => params[:id]}).caption
  end

  def index
    @list_of_pictures = Picture.all
  end

  def new
  end

  def create
    @p = Picture.new
    @p.caption = params[:caption]
    @p.source = params[:source]
    @p.save

    redirect_to("http://localhost:3000/all_pictures")
  end

  def destroy
    @p = Picture.find_by({:id => params[:id]})
    @p.destroy
    @p.save

    redirect_to("http://localhost:3000/all_pictures")
  end

  def edit
    @picture_id = params[:id]
    @picture_source = Picture.find_by({:id => params[:id]}).source  #or can use @picture = Picture.find(params[:id]).source
    @caption = Picture.find_by({:id => params[:id]}).caption
  end

  def update
    @p = Picture.find_by({:id => params[:id]})
    @p.caption = params[:caption]
    @p.source = params[:source]
    @p.save

    redirect_to("http://localhost:3000/picture_details/#{params[:id]}")
  end

end
