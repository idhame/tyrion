class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable
  ROLES = %w(user admin)
  validates :role, inclusion: { in: ROLES, message: "%{value} is not a valid role"}
  

end
