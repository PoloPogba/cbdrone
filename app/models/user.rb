class User < ApplicationRecord
after_create :welcome_send

#mail registration

def welcome_send
	UserMailer.welcome_email(self).deliver_now
end


# Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :carts
         has_many :items, through: :carts
         has_many :big_carts, through: :carts
         validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
         validates :first_name, presence: true
         validates :last_name, presence: true
         validates :numero_telephone,:presence => true, :with => /^(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})$/, :length => { :minimum => 10, :maximum => 15 }
end
