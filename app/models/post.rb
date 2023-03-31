class Post < ApplicationRecord
  after_save :update_posts_counter
  has_many :comments
  has_many :likes
  belongs_to :author, class_name: 'User'

  def update_posts_counter
    User.find_by(name: author.name).increment!(:posts_counter)
  end

  def latest_comments
    comments.order(created_at: :desc).limit(5)
  end

  after_save :update_posts_counter

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0 }
  
end
