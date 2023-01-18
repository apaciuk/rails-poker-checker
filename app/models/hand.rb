# == Schema Information
#
# Table name: hands
#
#  id         :uuid             not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Hand < ApplicationRecord
    has_and_belongs_to_many :checks, class_name: "Check"
    validates :name, presence: true, length: { maximum: 255 }

    def initialize(name)
        @name = name
    end 
end
