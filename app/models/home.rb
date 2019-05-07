class Home < ApplicationRecord
  validates :name, :email, :text, presence: true
end
