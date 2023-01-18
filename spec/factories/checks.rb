# == Schema Information
#
# Table name: checks
#
#  id         :uuid             not null, primary key
#  hand_name  :string           default(""), not null
#  status     :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :check do
    status { ['3S4S5S6S7S'] }
  end
end
