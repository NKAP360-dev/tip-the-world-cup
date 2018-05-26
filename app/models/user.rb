class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :participants
  has_many :games, through: :participants
  has_many :administrating_games, class_name: 'Game'
  has_many :invitations
end
