class Client < ApplicationRecord
    validates :email, :phone, presence: true
    validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
    validates :phone, :numericality => true,
                      :length => { :minimum => 6, :maximum => 10 }

    def full_name
        "#{name} #{last_name}"
    end
end
