class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, presence: true, format: { without: /\s/ }
  validates :last_name, presence: true, format: { without: /\s/ }
  validates :email, uniqueness: true
end
