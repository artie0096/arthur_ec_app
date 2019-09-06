class User < ApplicationRecord
  has_many :orders
  enum role: {管理者: 0, 業者: 1, 一般ユーザー: 2}

	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :confirmable, :timeoutable	
end
