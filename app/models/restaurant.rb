class Restaurant < ApplicationRecord
  # the place for validations and associations
  validates :name, presence: true
end
