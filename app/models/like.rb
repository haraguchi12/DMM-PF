class Like < ApplicationRecord
  belongs_to :store  # 店舗/お気に入り    → 1:多
  belongs_to :user   # ユーザー/お気に入り → 1:多

  validates_uniqueness_of :store_id, scope: :user_id    # バリデーション（ユーザーと店舗の組み合わせは一意）
  # 同じ投稿を複数回お気に入り登録させないため。
end
