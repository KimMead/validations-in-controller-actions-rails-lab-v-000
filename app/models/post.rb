class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-fiction), message: "%{category} is not valid"}
  validates :content, length: { minimum: 100}
end
