class Store < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :posts, dependent: :destroy  # 店舗/投稿 → 1:多

         belongs_to :user, optional: true
         has_many :likes, dependent: :destroy  # 店舗/お気に入り → 1:多
         attachment :image
         
         def liked_by?(user)
           likes.where(user_id: user.id).exists?
         end
           
end

