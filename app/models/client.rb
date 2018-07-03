class Client < ApplicationRecord
    validates :email, :phone, presence: true
    validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
    validates :phone, :numericality => true,
                      :length => { :minimum => 6, :maximum => 10 }

    def full_name
        if first_name.present? && last_name.present?
            first_name + " " + last_name
        elsif first_name.blank? && last_name.blank?
            ""
        else first_name.blank? || last_name.blank?
            first_name.presence || last_name.presence
        end
    end
end
