class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :dashboard
  has_many :dashboard_elements, through: :dashboard

  def default_dashboard
    Dashboard.find_or_create_by(user: self)
  end
end
