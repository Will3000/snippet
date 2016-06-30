class LanguagesController < ApplicationController
  def show
    @language = Language.find params[:id]
    @snippets = @language.snippets
  end
end
