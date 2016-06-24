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

  private
  def snippet_params
    params.require[:snippet].permit(:title, :body, :language)
  end
end
