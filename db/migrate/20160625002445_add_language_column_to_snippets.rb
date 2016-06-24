class AddLanguageColumnToSnippets < ActiveRecord::Migration
  def change
    add_reference :snippets, :language, index: true, foreign_key: true
    add_reference :snippets, :user, index: true, foreign_key: true
  end
end
