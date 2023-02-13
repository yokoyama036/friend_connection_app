class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def edit
    set_picture
    @picture = Picture.find(params[:id])
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if @picture.save
      redirect_to pictures_path, notice: "投稿しました"
    else
      render :new, notice: "投稿できませんでした"
    end
  end
  
  def show
    set_picture
    @picture = Picture.find(params[:id])
  end

  def update
    set_picture
    @picture = Picture.find(params[:id])
    if @picture.update(picture_params)
      redirect_to pictures_path, notice: '編集しました'
    else
      render :edit
    end
  end
  
  def confirm
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    @picture = current_user.pictures.build(picture_params)
    render :new if @picture.invalid?
  end

  def destroy
    set_picture
    @picture.destroy
    redirect_to pictures_url, notice: "削除しました."
  end

  private
  def set_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:content, :image, :image_cache)
  end


end
