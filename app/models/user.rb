class User < ApplicationRecord

  devise :database_authenticatable, :registerable, :validatable

  validates :email, uniqueness: { case_sensitive: false }, presence: true, allow_blank: false

  def generate_jwt
    JWT.encode({ id: id,
                 exp: 60.days.from_now.to_i },
               Rails.application.secrets.secret_key_base)
  end
end
