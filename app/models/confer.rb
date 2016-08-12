class Confer < ApplicationRecord
  belongs_to :country
  belongs_to :subject
  # belongs_to :account

  # has_many :links
end
