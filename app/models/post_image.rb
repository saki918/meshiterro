class PostImage < ApplicationRecord

	belongs_to :user
    attachment :image # ここを追加（_idは含めません）
    # 次に、PostImageモデルに、PostCommentモデルとの関連付けを追加
    has_many :post_comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
    validates :shop_name, presence: true
    validates :image, presence: true
    # このメソッドで、引数で渡されたユーザidがFavoritesテーブル内に存在
    # （exists?）するかどうかを調べます
    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
        end
end
