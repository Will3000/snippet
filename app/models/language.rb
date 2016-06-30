class Language < ActiveRecord::Base
  has_many :snippets, dependent: :nullify

  validates :name, uniqueness: true, presence: true

end
