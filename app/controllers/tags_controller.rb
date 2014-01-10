class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index 
    @tag = Tag.all 
  end

  def destroy
    @tag = Tag.destroy(params[:id])
    flash.notice = "The tag '#{@tag.name}' has been banished"

    redirect_to tags_path
  end


end