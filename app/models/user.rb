class User < ApplicationRecord
  attr_accessor :terms_of_service

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
 	# Validations
  validates :terms_of_service, acceptance: { accept: '1' }, on: :create
  validates :first_name, :last_name, presence: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
