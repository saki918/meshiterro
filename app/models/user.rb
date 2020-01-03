class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	# まずは、Userモデルに、PostImageモデルとの関連付けを記述します。
	# さらに、PostCommentモデルとの1:Nの関係も実装します。
    has_many :post_images, dependent: :destroy
    has_many :post_comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
    attachment :profile_image
end
