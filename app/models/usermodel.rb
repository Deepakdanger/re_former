# frozen_string_literal: true

class Usermodel < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'Email invalid'},
                    uniqueness: { case_sensitive: false },
                    length: { minimum: 4, maximum: 254 }
  validates :password, presence: true, length: { minimum: 3 }
end
