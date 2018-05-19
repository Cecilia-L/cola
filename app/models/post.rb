class Post < ApplicationRecord
    mount_uploader :image, S3Uploader
    belongs_to :user
    has_many :comments
    has_many :likes
end
