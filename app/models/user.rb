class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, dependent: :destroy #konektado ito sa user table which is andon ung user id.

  # before_save {self.email = email.downcase}
  #  validates :username, presence: true,
  #            uniqueness:{case_sensitive: false},
  #            length:{minimum: 3, maximum: 25}
  #
  #  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #
  #  validates :email, presence: true,
  #           length: {maximum: 105},
  #           uniqueness: {case_sensitive: false},
  #           format: { with: VALID_EMAIL_REGEX }
  #
  # has_secure_password
end