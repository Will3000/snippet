class SnippetsController < ApplicationController
  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new snippet_params
    if @snippet.save
      redirect_to snippet_path, notice: "Snippet Created"
    else
      redirect_to new_snippet_path, alert: "Failed to Create Snippet!"
    end
  end

  def index
    @snippets = Snippet.all
  end

  def show
    @snippet = Snippet.find params[:id]
  end

  private
  def snippet_params
    params.require(:snippet).permit(:title, :body)
  end
end
