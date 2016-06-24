class Language < ActiveRecord::Base
  has_many :snippets, dependent: :nullify
end
