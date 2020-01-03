class PostComment < ApplicationRecord
# UserモデルとPostCommentモデルに記述します。
# UserモデルもPostImageモデルも関連付けられるのは
# 1つのため、belongs_toを記述
	belongs_to :user
    belongs_to :post_image
end
