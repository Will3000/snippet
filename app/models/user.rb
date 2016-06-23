class User < ActiveRecord::Base
  has_many :snippets, dependant: :destroy
end
