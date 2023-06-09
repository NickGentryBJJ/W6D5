# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
    CAT_COLORS = ["white", "brown", "black", "orange", "grey"]
    validates :birth_date, :color, :name, :sex, presence: true 
    validates :color, inclusion: {in: CAT_COLORS, message: "%{value} is not a valid color" }
    validates :sex, inclusion: {in: ["M", "F"], message: "%{value} is not a valid sex" }
    validate :birth_date_cannot_be_future

    def birth_date_cannot_be_future
        if birth_date > Date.today
            errors.add(:birth_date, "birth date cannot be in future")
        end
    end

    def age
        Date.today.year - birth_date.year
    end
end
