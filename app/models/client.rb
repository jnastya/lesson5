class Client < ApplicationRecord
    validates :email, :phone, presence: true
    validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
    validates :phone, format: {with: ~/\b^([0-9]{10})$\b/}
end
