class Contact < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\.[^@\s]+\z/
  VALID_PROJECT_TYPES = %w[web_app consulting optimization devops other].freeze

  validates :name, presence: true, length: { maximum: 100 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :message, presence: true, length: { maximum: 5000 }
  validates :project_type, inclusion: { in: VALID_PROJECT_TYPES }, allow_blank: true
end
