class Post < ApplicationRecord
  has_many :tags, dependent: :destroy
  belongs_to :store
  attachment :image
end
