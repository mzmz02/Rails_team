class Post < ApplicationRecord
    mount_uploader :image_path, ImageUploader
    validates :points, numericality: {greater_than: 0,less_than: 6, message: " : Please input 1~5"}
    validates :country, :image_path, {presence: true}
    validates :content, presence: true, length: {maximum: 140, message: " : Please input less than 140"}

    belongs_to :user
    has_many :goods
    
end
