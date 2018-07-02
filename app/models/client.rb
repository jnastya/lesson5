class Client < ApplicationRecord
    validates :email, :phone, presence: true
    validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
    validates :phone, :numericality => true,
                      :length => { :minimum => 6, :maximum => 10 }

    def full_name
        if name.present? && last_name.present?
            name + " " + last_name
        elsif name.blank? && last_name.blank?
            ""
        else name.blank? || last_name.blank?
            name.presence || last_name.presence
        end
    end
end
