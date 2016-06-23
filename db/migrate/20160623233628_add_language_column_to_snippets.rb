class AddLanguageColumnToSnippets < ActiveRecord::Migration
  def change
    add_column :snippets, :name, :string
    add_reference :snippets, :user, index: true, foreign_key: true
  end
end
