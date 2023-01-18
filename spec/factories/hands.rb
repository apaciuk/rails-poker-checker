# == Schema Information
#
# Table name: hands
#
#  id         :uuid             not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :hand do
    cards { ['3S4S5S6S7S'] }
  end
end
