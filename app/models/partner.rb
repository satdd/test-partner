class Partner < ApplicationRecord
  validates :emp_email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :inn, presence: true
end
