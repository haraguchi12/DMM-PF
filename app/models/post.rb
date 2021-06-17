class Post < ApplicationRecord
  belongs_to :store
  attachment :image
end
