class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# アソシエーションの定義
  has_one :users_details, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_one :credit_card, dependent: :destroy
  has_many :evaluations, dependent: :destroy

# バリデーションの定義
  validates :name, presence: true , uniqueness: true   #空でない事、nameが重複しない事
  validates :encrypted_password, length: { minimum: 6 }  #パスワードが6文字以上である事
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
end
