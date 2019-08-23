class Article < ActiveRecord::Base
  belongs_to :user #konektado ito sa article table which is andon ung article_id.
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
  validates :user_id, presence: true


end