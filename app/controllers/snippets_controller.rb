class SnippetsController < ApplicationController
  before_action :find_snippet, only: [:show, :edit, :update, :destroy]
  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new snippet_params
    if @snippet.save
      redirect_to snippet_path(@snippet), notice: "Snippet Created"
    else
      redirect_to new_snippet_path, alert: "Failed to Create Snippet!"
    end
  end

  def index
    @snippets = Snippet.all
    @languages = Language.all
  end

  def show
  end

  def edit
  end

  def update
    if @snippet.update snippet_params
      redirect_to snippet_path(@snippet), notice: "Update Successfully"
    else
      flash[:alert] = "Failed to Update"
      render :edit
    end
  end

  def destroy
    @snippet.destroy
    redirect_to root_path, notice: "Snippet Deleted"
  end

  private

  def find_snippet
    @snippet = Snippet.find params[:id]
  end

  def snippet_params
    params.require(:snippet).permit(:title, :body, :language_id)
  end
end
