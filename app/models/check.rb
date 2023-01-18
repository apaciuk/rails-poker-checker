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
class Check < ApplicationRecord
    has_and_belongs_to_many :hands, class_name: "Hand"
    before_commit :hand_name

    def initialize(*args)
        super(*args)
    end 

    def hand_name
        hand_name = ''
        if self.status == '10HJHQHKHAH' || self.status == '10DJDQDKDAH' || self.status == '10SJSQSKSAH' || self.status == '10CJCQCKCAH'
            hand_name = 'Royal Flush'
            return hand_name
        elsif self.status == '10HJHQHKH' || self.status == '10DJDQDKD' || self.status == '10SJSQSKS' || self.status == '10CJCQCKC'
            hand_name = 'Straight Flush'
            return hand_name
        elsif self.status == 'AHADASAC' || self.status == 'KHKDKSKC' || self.status == 'QHQDKSQCKC' || self.status == 'JHJDJSJC'
            hand_name = 'Four of a Kind'
            return hand_name
        elsif self.status == 'AHADAS' || self.status == 'KHKDKS' || self.status == 'QHQDKS' || self.status == 'JHJDJS'
            hand_name = 'Three of a Kind'
            return hand_name
        elsif self.status == 'AHAD' || self.status == 'KHKD' || self.status == 'QHQD' || self.status == 'JHJD'
            hand_name = 'Pair'
            return hand_name
        elsif self.status == 'AH' || self.status == 'KH' || self.status == 'QH' || self.status == 'JH'
            hand_name = 'High Card'
            return hand_name
        else
            hand_name = 'Invalid Hand'
            return hand_name
        end
    end 
end
