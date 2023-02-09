class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def new
  end

  def edit
  end

  def create
    @pictures = Picture.new(contact_params)
    if @pictures.save
      redirect_to new_contact_path, notice: "保存しました！"
    else
      render :new
    end
  end

  def confirm
  end

  def destroy
  end

  private

end
